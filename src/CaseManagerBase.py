""" Holds the logic to split logs in cases
.. module:: CaseManager

A case is an ordered subset of a log the contains events comparables between them.

"""
import doctest
from src import LogReaderBase

class CaseManagerBase:
    """ Base case for case manager
    This class splits logs in two dimensions:
    1) Detects parallel executions of cases
    2) Detects start / stop events for cases.

    >>> CaseManagerBase( reader = LogReaderBase() ) 
    <__main__.CaseManagerBase instance at ...
    """
    def __init__(self, reader):
        # TODO: Check that it is of class LogReader
        self.reader = reader

if __name__ == '__main__':
    """If this file is called directly it will execute a self test 
    """
    doctest.testmod( optionflags = doctest.ELLIPSIS )
