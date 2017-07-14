from src import *
import re
from time import *


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