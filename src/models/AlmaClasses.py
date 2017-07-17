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
        return [ DelaysDetectorEngine(self) ]


# Move elsewhere than ALMA.
class DelaysDetectorEngine(CaseProcessingEngineBase):
    def __init__(self, parent):
        CaseProcessingEngineBase.__init__(self, parent)
        self.count = {}
        self.timeOf = {}

    def streamProcess(self, ts, activity):

        self.timeOf[activity] = ts
        try:
            self.count[activity] = self.count[activity] + 1
        except:
            self.count[activity] = 1
        return

    def postProcess(self):
        self.generateComparableSet()

    def generateComparableSet(self):
        # Clusterize on same frequencies 
        self.uniques = {}
        for activity, freq in self.count.iteritems():
            if freq not in self.uniques.keys():
                self.uniques[freq] = [ activity ]
            else:
                self.uniques[freq].append(activity)
            # print activity, freq
        # Remove freq < 2
        for freq in self.uniques.keys():
            if len(self.uniques[freq]) < 2:
                del(self.uniques[freq])
                logging.debug("removing freq=%s" % freq)
        # print self.uniques

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
        return "ContainerServices::getComponentNonSticky(CONTROL/Array" in event[1]

    def conditionForEndEvent(self, event):
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



