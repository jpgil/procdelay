from src import *
import re
from time import *
import logging


def paintedByAlma(text):
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

class CaseManagerBase:
    """ I need to document all this logic
    """
    def __init__(self):
        self.history = []
        self.uniques = {}
        self.verbose = False

    @staticmethod
    def isStartEvent(event):
        raise NotImplementedError

    @staticmethod
    def newCase(basedOn):
        """Factory method.
        It returns also an ID to be used as case identifier
        """
        raise NotImplementedError

    def isEndEvent(self, event):
        raise NotImplementedError

    def isValidEvent(self, event):
        """ Override if you need to filter events based on some criteria. True by default
        """
        return True

    # Some magic here....
    def appendActivity(self, ts, activity):
        self.history.append( (ts, activity) )
        if activity not in self.uniques.keys():
            self.uniques[activity] = 1
        else:
            self.uniques[activity] = self.uniques[activity] + 1

    def getTotalEvents(self):
        return len(self.history)

    def getUniqueColors(self):
        return self.uniques.keys()

    def finish(self):
        # Do whatever you need to do here
        # For example... count the delays and send to PairsDB
        pass



class CaseAntennaStartup(CaseManagerBase):

    @staticmethod
    def isStartEvent(event):
        return "Running the container with these arguments" in event[1]

    def isEndEvent(self, event):
        return "getComponentNonSticky(CONTROL/Array" in event[1]

    @staticmethod
    def newCase(basedOn):
        return "AntStartup", CaseAntennaStartup()



class CaseAntennaObserving(CaseManagerBase):

    @staticmethod
    def isStartEvent(event):
        return "Request to load 'AntInterferometryController'" in event[1]

    def isEndEvent(self, event):
        return "Switched state of component" in event[1] and "AntInterferometryController: DESTROYING -> DEFUNCT" in event[1]

    @staticmethod
    def newCase(basedOn):
        return "AntObserving", CaseAntennaObserving()



class CaseAntennaInArray(CaseManagerBase):

    @staticmethod
    def isStartEvent(event):
        return "ContainerServices::getComponentNonSticky(CONTROL/Array" in event[1]

    def isEndEvent(self, event):
        return "Antenna" in event[1] and "assigned to array " in event[1]

    @staticmethod
    def newCase(basedOn):
        return "AntInArray", CaseAntennaInArray()



class CaseRadioSetup(CaseManagerBase):

    @staticmethod
    def isStartEvent(event):
        return "Try to power on band" in event[1]

    def isEndEvent(self, event):
        return "Receiver band" in event[1] and "powered on" in event[1]

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


