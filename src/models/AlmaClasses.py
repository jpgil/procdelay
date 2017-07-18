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
        return [ DelaysDetectorEngine(parent=self, path=config.FILEPATH_DB+"/delays") ]


# Move elsewhere than ALMA.
import json
class DelaysDetectorEngine(CaseProcessingEngineBase):
    def __init__(self, parent, path):
        CaseProcessingEngineBase.__init__(self, parent)
        self.count = {}
        self.lastTimeOf = {}
        self.firstTimeOf = {}
        self.path = path

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
        self.clusterizeOnFreq()
        total_pairs, total_delays = 0, 0

        for freq, cluster in self.uniques.iteritems():
            self.log.debug("Computing delays on %s elements of freq=%s" % (len(cluster), freq))
            self.log.debug("cluster = %s" % cluster)

            # Do the combinatorial analysis. (Scary!)
            pairs = self.getValidPairs(cluster)
            self.log.debug("For cluster freq=%s, computing delays on %s pairs" % (freq, len(pairs)))
            total_pairs = total_pairs + len(pairs)
            for a, b in pairs:
                if not self.loadDelays(a, b, self.parent.history[0][0]):
                    try:
                        delays = self.computeDelays( a, b )
                        total_delays = total_delays + len(delays)
                        self.log.debug("delays(C%s, C%s) = %s" % (a, b, delays))
                        self.saveDelays(a, b,  self.parent.history[0][0], delays)
                        self.log.debug("(C%s, C%s) stored in DB" %(a, b) )
                    except ValueError as e:
                        self.log.debug("delays(C%s, C%s) discarded. ValueError: %s" % (a, b, e))
                else:
                    total_delays = total_delays + len(self.loadedDelays[str(self.parent.history[0][0])])
                    self.log.debug("(C%s, C%s) already computed. Not counting delays again." %(a, b) )
        self.log.info("Found %s total pairs with %s combined delays" % (total_pairs, total_delays))

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

    def delayFilename(self, a, b):
        return "%s/timestamp/%s-%s-%s.json" % (self.path, self.parent.myName, a, b) 

    def delayFilenameCombined(self, a, b):
        return "%s/%s-ALL-%s-%s.json" % (self.path, self.parent.myName, a, b) 



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

        iter over history [ (t0,a0), (t1,a1), ... ] and extract all 
            t1-t0 
        in all a0(x){0,}a1 such than for all x in sequence,
            x != a0 and x != a1

        we know that exist at least one pair (a,b) by construction of all (a,b) pairs. Also
        cases like a..b..b or a..a..b must not be considered (why? how?)
        """
        delays = []
        tA = -1
        for event in self.parent.history:
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



