"""
Classes specific for ALMA analysis of delay profiler and outliers.
"""
from time import *
import logging
import re
from src import *



def paintedForAlmaAntennas(text):
    # Tokenize antenna Name  
    colorized = re.sub( "(DV|DA|CM|PM)[0-9][0-9]", "${ANT}", text)

    # Tokenize some hand picked components
    colorized = re.sub( 'IFProc0', "IFProc_A", colorized)
    colorized = re.sub( 'IFProc1', "IFProc_B", colorized)
    colorized = re.sub( 'LO2BBpr0', "LOtwoBBpr_A", colorized)
    colorized = re.sub( 'LO2BBpr1', "LOtwoBBpr_B", colorized)
    colorized = re.sub( 'LO2BBpr2', "LOtwoBBpr_C", colorized)
    colorized = re.sub( 'LO2BBpr3', "LOtwoBBpr_D", colorized)

    colorized = re.sub( 'DTXBBpr0', "DTXBBpr_A", colorized)
    colorized = re.sub( 'DTXBBpr1', "DTXBBpr_B", colorized)
    colorized = re.sub( 'DTXBBpr2', "DTXBBpr_C", colorized)
    colorized = re.sub( 'DTXBBpr3', "DTXBBpr_D", colorized)

    # Remove too specific paths
    colorized = re.sub( '/alma/.*/lib/', "${PATH}/", colorized)

    # Tokenize any number
    colorized = re.sub( '-?[0-9]+\.?[0-9]*(?:[Ee]\ *-?\+?\ *[0-9]+)?', "${N}", colorized)

    # Trim extra spaces to just 1, removing trailing ones
    colorized = re.sub( '\s+', " ", colorized).strip()

    return colorized

class CaseDelayDetector(CaseManagerBase):
    """
    """
    @staticmethod
    def newCase(basedOn):
        return "ID", CaseDelayDetector()

    def processingEngines(self):
        # return [ DelaysDetectorEngine(parent=self, path=config.FILEPATH_DB+"/delays") ]
        return [ DelaysDetectorEngine(
            parent=self, 
            db=DelaysFileDB( 
                caseName=self.myName, 
                path=config.FILEPATH_DB+"/delays") 
            ) 
        ]


# Move elsewhere than ALMA.
class DelaysDetectorEngine(CaseProcessingEngineBase):

    # TODO: update with self.db
    # def __init__(self, parent, path):
    def __init__(self, parent=None, db=None):
        CaseProcessingEngineBase.__init__(self, parent)
        self.db = db
        self.count = {}
        self.lastTimeOf = {}
        self.firstTimeOf = {}
        self.path = self.db.path

    def streamProcess(self, ts, activity):

        # Remember when activity happens last time
        self.lastTimeOf[activity] = ts

        # Store the order of appearance. "AB" is different than "BA" if "A" appeared first.
        if activity not in self.firstTimeOf.keys():
            self.firstTimeOf[activity] = ts

        # Count activities
        if activity in self.count.keys():
            self.count[activity] = self.count[activity] + 1
        else:
            self.count[activity] = 1



    def postProcess(self):
        # self.db.initialize()

        self.clusterizeOnFreq()
        total_delays = 0
        pairs = []
        for freq, cluster in self.uniques.iteritems():
            self.log.debug("Computing delays on %s elements of freq=%s. cluster = %s." % (len(cluster), freq, cluster))

            # Do the combinatorial analysis. (Scary!)
            pairs_for_freq = self.getValidPairs(cluster)
            pairs = pairs + pairs_for_freq
            self.log.debug("For cluster freq=%s, I found %s pairs" % (freq, len(pairs_for_freq)))

        for a, b in pairs:
            case_timestamp = self.parent.history[0][0]

            # countFromDB = self.db.count(a, b, case_timestamp)
            # if countFromDB == 0:
            if not self.loadDelays(a, b, case_timestamp):
                try:
                    delays = self.computeDelays( a, b )
                    self.log.debug("delays(C%s, C%s) = %s" % (a, b, delays))

                    self.saveDelays(a, b,  case_timestamp, delays)
                    # self.db.add(a, b, case_timestamp, delays)
                    self.log.debug("(C%s, C%s) stored in DB" %(a, b) )

                    total_delays = total_delays + len(delays)
                except ValueError as e:
                    self.log.debug("delays(C%s, C%s) discarded. ValueError: %s" % (a, b, e))
            else:
                # total_delays = total_delays + countFromDB
                total_delays = total_delays + len(self.loadedDelays[str(case_timestamp)])
                self.log.debug("(C%s, C%s) already computed. Not counting delays again." %(a, b) )

        self.log.info("Found %s total pairs with %s combined delays" % (len(pairs) , total_delays))

        # self.db.finalize()

    # TODO: remove from here
    def saveDelays(self, a, b, ts, delays):
        # self.loadedDelays.append( { 'timestamp': ts, 'delays': delays } )
        self.loadedDelays[ts] = delays
        self.log.debug( self.loadedDelays )
        with open(self.delayFilename(a, b), 'w') as outfile:
            json.dump(self.loadedDelays, outfile)

        combinedData = []
        for t, d in self.loadedDelays.iteritems():
            combinedData = combinedData + d
        with open(self.delayFilenameCombined(a, b), 'w') as outfile:
            json.dump(combinedData, outfile)

        # raise NotImplementedError
        # Remove just in case
        del(self.loadedDelays)


    # TODO: remove from here
    def loadDelays(self, a, b, ts):
        self.loadedDelays = {}
        try:
            with open( self.delayFilename(a, b) ) as json_data:
                self.loadedDelays = json.load(json_data)
            try:
                self.log.debug("FOUND in DB! %s" % self.loadedDelays[str(ts)])
                return True
            except:
                self.log.debug("Not found in DB %s agains %s" % (ts, self.loadedDelays.keys()))
                return False
            # return ts in self.loadedDelays.keys()

            # found = False
            # for d in self.loadedDelays:
            #     if not found and d['timestamp'] == ts:
            #         found = True
            #     elif found and d['timestamp'] == ts:
            #         raise ValueError("Hum... timestamp %s exists twice. Why?" % ts)

            return found

        except IOError as e:

            if "No such file or directory" in e:
                self.log.debug("File %s don't exists. Good, continue." % self.delayFilename(a, b))
                return False
            else:
                # Hey! Unhandled error
                raise IOError(e)

        raise ValueError("Why here?")

    # TODO: remove from here
    def delayFilename(self, a, b):
        return self.db.delayFilename(a, b)
        # return "%s/timestamp/%s-%s-%s.json" % (self.path, self.parent.myName, a, b) 

    # TODO: remove from here
    def delayFilenameCombined(self, a, b):
        return self.db.delayFilenameCombined(a, b)
        # return "%s/%s-ALL-%s-%s.json" % (self.path, self.parent.myName, a, b) 



    # By construction, the values in cluster has same frequency, necessary condition to be comparable.
    def getValidPairs(self, cluster):
        pairs = []
        for i in range(0, len(cluster) - 1):
            val = cluster[i]
            tail = cluster[i+1:]
            for j in range(len(tail)):
                a, b = val, tail[j]
                if self.firstTimeOf[a] < self.firstTimeOf[b]:
                    # Checks A B
                    self.log.debug("Which is first in (C%s, C%s) : (C%s, C%s) found." % (a, b, a, b))
                    pairs.append( (a, b) )
                else:
                    # Now checks B A
                    self.log.debug("Which is first in (C%s, C%s) : (C%s, C%s) found." % (a, b, b, a))
                    pairs.append( (b, a) )
        return pairs



    def clusterizeOnFreq(self):
        # Clusterize on same frequencies 
        self.uniques = {}
        for activity, freq in self.count.iteritems():
            if freq not in self.uniques.keys():
                self.uniques[freq] = [ activity ]
            else:
                self.uniques[freq].append(activity)

        # Remove freq < 2
        for freq in self.uniques.keys():
            if len(self.uniques[freq]) < 2:
                del(self.uniques[freq])
                self.log.debug("removing freq=%s" % freq)

        # Manually removing freq == 1
        # if 1 in self.uniques.keys():
        #     del(self.uniques[1])
        self.log.info("Found %s clusters among %s symbols, with freqs=%s" % (len(self.uniques), len(self.lastTimeOf), self.uniques.keys()))

    def computeDelays( self, a, b ):
        """
        Rationale: 

        Given a pair (Ta, Ya) and (Tb, Yb) with Ya != Yb, both appearing in a sequence 
            S=( (t0,y0), (t1,y1), ... , (tN,yN) ), 

        construct the sequence of delays 
            D(Ya, Yb) = ( d0, d1, ..., dQ )

        where 

        di = tk-tj for all j, k <= N such that there is a subsequence on S defined by
            ( (tj, yj), (t0, x0), ..., (tM, xM), (tk, yk) ) 

        with
            yj = Ya,  yk = Yb
            xi != Ya, xi != Yb 


        we know that exist at least one pair (a,b) by construction of all (a,b) pairs. Note that delays over 
        (..a..b..b..) or (..a..a..b..) considers only the nearest (a,b) given the last restriction  
        """
        S = self.parent.history
        delays = []
        tA = -1
        for event in S:
            if event[1] == a:
                tA = event[0]
            elif event[1] == b and tA >= 0:
                tB = event[0]
                delays.append( tB - tA )
                tA = -1
            # elif event[1] == b and tA == -1:
            #     # This expected to fail sometimes then a,b could appear mixed, because millisecond precision.

            #     # Brutte aproximation: if previous delays are ~0, 
            #     raise ValueError("Found an ABB case, and I was expecting ABABABAB.")
        if len(delays) == 0:
            raise ValueError("I found no delays.")

        return delays



    def printTopColors(self, num):
        col = []
        for w in sorted(self.count, key=self.count.get, reverse=True)[:num]:
          col.append( "C%s(%s)"% (w, self.count[w]))
        return " ".join(col)


    def worldStats(self):
        return "%s: Clusters=%s TOP_COLORS=%s " % (self.myName, len(self.uniques), self.printTopColors(3) )



import json
import glob
class DelaysFileDB:
    def __init__(self, caseName, path):
        self.log = logging.getLogger( "%s" % ( str(self.__class__) ) )
        self.path = path
        self.caseName = caseName
        self._pairs = None
        self._instances_per_pair = None
        self._delays_per_pair = None

    def delayFilename(self, a, b):
        return "%s/timestamp/%s-%s-%s.json" % (self.path, self.caseName, a, b) 

    def delayFilenameCombined(self, a, b):
        return "%s/%s-ALL-%s-%s.json" % (self.path, self.caseName, a, b) 

    def initialize(self):
        pass
    def finalize(self):
        pass
    def exists_timestamp(self, a, b, ts):
        raise NotImplementedError
    def exists_pair(self, a, b):
        raise NotImplementedError
        
    def getDelays(self, a, b, ts=None):
        pair = self.getPair(a, b)
        if ts is None:
            delays = []
            for ts, this_delays in pair.iteritems():
                delays = delays + this_delays
            return delays
        else:
            raise NotImplementedError

    def getPair(self, a, b):
        try:
            with open( self.delayFilename(a, b) ) as json_data:
                return json.load(json_data)

        except IOError as e:

            if "No such file or directory" in e:
                self.log.debug("File %s don't exists. Good, continue." % self.delayFilename(a, b))
                return {}
            else:
                # Hey! Unhandled error
                raise IOError(e)

        raise ValueError("Why here?")        


    def unique_colors(self):
        self._parse_directory_structure()
        u = {}
        for (a,b) in self._pairs:
            u[ int(a) ] = True
            u[ int(b) ] = True
        un = u.keys()
        un.sort()
        return un

    def total_pairs(self):
        self._parse_directory_structure()
        return len(self._pairs)

    def total_cases(self):
        self._parse_instances_per_pair()
        return len(self._cases)

    def instances_per_pair(self):
        self._parse_instances_per_pair()
        return [ ( pair, count ) for pair, count in self._instances_per_pair.iteritems() ]

    def delays_per_pair(self):
        self._parse_instances_per_pair()
        return self._delays_per_pair

    def _parse_directory_structure(self):
        if self._pairs is None:
            filenames = glob.glob("%s/timestamp/%s-[0-9]*" % (self.path, self.caseName))
            self._pairs = []
            for f in filenames:
                a = int(f.split('-')[-2].split("-")[0])
                b = int(f.split('-')[-1].split(".")[0])
                self._pairs.append( (a, b) )
            self.log.debug( "Found these pairs for %s: %s" % (self.caseName, self._pairs) )

    def _parse_instances_per_pair(self):
        if self._instances_per_pair is None:
            self._instances_per_pair = {}
            self._delays_per_pair = {}
            _cases = {}
            for (a,b) in self._pairs:
                instances = self.getPair(a, b)
                t_delays = 0
                self.log.debug('(%s, %s): Found %s cases' % (a, b, len(instances)) )
                for ts, delays in instances.iteritems():
                    self._instances_per_pair[ (a, b) ] = len(instances)
                    _cases[ int(ts) ] = True
                    t_delays = t_delays + len(delays)
                self._delays_per_pair[ (a, b) ] = t_delays
                self.log.debug("(%s, %s): Found %s delays in total" % (a, b, t_delays) )
            self._cases = _cases.keys()

            self.log.debug("Found cases: %s " % (self._cases))
            # self.log.debug( self._instances_per_pair[ (a, b) ] )











class CaseAntennaStartup(CaseDelayDetector):

    @staticmethod
    def isStartEvent(event):
        return "Running the container with these arguments" in event[1]

    def conditionForEndEvent(self, event):
        return "getComponentNonSticky(CONTROL/Array" in event[1]

    @staticmethod
    def newCase(basedOn):
        return "AntStartup", CaseAntennaStartup()



class CaseAntennaObserving(CaseDelayDetector):

    @staticmethod
    def isStartEvent(event):
        return "Request to load 'AntInterferometryController'" in event[1]

    def conditionForEndEvent(self, event):
        return "Switched state of component" in event[1] and "AntInterferometryController: DESTROYING -> DEFUNCT" in event[1]

    @staticmethod
    def newCase(basedOn):
        return "AntObserving", CaseAntennaObserving()



class CaseAntennaInArray(CaseDelayDetector):

    @staticmethod
    def isStartEvent(event):
        # logging.debug(event)
        return "ContainerServices::getComponentNonSticky(CONTROL/Array" in event[1]

    def conditionForEndEvent(self, event):
        # logging.debug(event)
        # if "Antenna" in event[1] and "assigned to array " in event[1]:
        #     raise ValueError()
        return "Antenna" in event[1] and "assigned to array " in event[1]

    @staticmethod
    def newCase(basedOn):
        return "AntInArray", CaseAntennaInArray()



class CaseRadioSetup(CaseDelayDetector):

    @staticmethod
    def isStartEvent(event):
        return "Try to power on band" in event[1]

    def conditionForEndEvent(self, event):
        return ("Receiver band" in event[1] and "powered on" in event[1]) or \
        "Try to power on band" in event[1]

    @staticmethod
    def newCase(basedOn):
        instance = CaseRadioSetup()
        # Extracts just the text "band #3"
        band = basedOn[1][ basedOn[1].index("band") : ]
        instance.band = band
        return "radioSetup#%s" % band, instance


    def isValidEvent(self, event):
        # if self.band in event[1]:
        #     logging.info(event)
        return self.band in event[1]





class LR_AlmaContainerFile(LogReaderBase):
    """
    Read container log from ALMA software

    WARNING Please complete the multiline case.
    """
    isStarted = False
    isFinished = False
    orFilters = []

    def __init__(self, fileName=""):
        if fileName != "":
            self._loadContainer(fileName)
        self._size = 0

    def _loadContainer(self, filename):
        self.filename = filename

    def len(self):
        return self._size

    def next(self):
        if self.isFinished:
            raise StopIteration
        if not self.isStarted:
            self._startReadingLines()

        if not self._fillBuffer():
            raise StopIteration

        txt = self.buffer[24:].strip()

        # Version for Python 2.7
        T = (str(self.buffer) + "00000000000000000000000")[0:23]
        T = T[0:4]+"-"+T[5:7]+"-"+T[8:10]+"T"+T[11:13]+":"+T[14:16]+":"+T[17:19]+"."+T[20:23]
        milliseconds = int( mktime( strptime(T[0:19], "%Y-%m-%dT%H:%M:%S") )*1000 + int(T[20:23]) )

        # milliseconds = int(1000*datetime.datetime( int(T[0:4]) , int(T[5:7]), int(T[8:10]), int(T[11:13]), int(T[14:16]), int(T[17:19]), int(T[20:23])*1000).timestamp())

        self._size = self._size + 1
        return milliseconds, txt


    def _startReadingLines(self):
        self.fd = open(self.filename, "r")
        self.isStarted = True


    def _fillBuffer(self):
        found = False
        while not found and not self.isFinished:
            self.buffer = self.fd.readline()
            if self.buffer == "":
                self.isFinished = True
            elif self._isValidBuffer():
                found = True
        return found

    def _isValidBuffer(self):
        if not re.match("[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T", self.buffer):
            return False

        testFilters = True
        if len(self.orFilters) > 0:
            passedOR = False
            for filterStr in self.orFilters:
                if re.search(filterStr, self.buffer):
                    passedOR = True
            testFilters = testFilters and passedOR

        # print( "%s: %s" % (testFilters, self.buffer))
        return testFilters



    def addOrFilter(self, filterStr):
        self.orFilters.append(filterStr)
        print ("%s added" % filterStr)





# MOVE ALL THIS SECTION elsewhere
from pandas import Series
def minmax_rank_based( values, sensitivity ):
    """ Give range to check outliers

    minmax_rank_based( [1, 2, 6, 4, ...], SENSITIVITY )
    (1, 17)
    """
    # Order by rank on number of instances
    value_counts = Series(delays).value_counts()
    # Cumulative sum
    cumsum = value_counts.cumsum()
    # Extract the subset of values that appears, individually, SENSITIVITY*100 % of time
    typicalValues = cumsum[ cumsum <= sensitivity * value_counts.sum() ]
    # Range obtained
    return min(typicalValues.index), max(typicalValues.index)

