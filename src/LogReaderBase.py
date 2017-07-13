"""Log Reader classes and concepts
.. module:: LogReader

A *Log* is a sequence of events. 
An *event* is a data structure containing at least (timestamp, case, activity), where timestamp is a member of some ordered set with addition ... {write here more definitions}
"""
import doctest

class LogReaderBase:
    """Base class for any log reader

    Any other log reader class must inherit from here and keeps this basic API. Remember that 
    the format of the event must be understable by any :mod:`CaseManager` implementation

    You need to extend this class, otherwise it will throw an error when iterating over it:
    >>> [i for i in LogReaderBase()]
    Traceback (most recent call last):
    ...
    NotImplementedError
    """

    def __init__(self):
        pass

    def __iter__(self):
        return self

    def example(self):
        """Returns an event example 
        To be tested by :module:CaseManager as in 

        CaseManagerImplementation.checkOutputFormat( LogReaderImplementation.example()] )

        A fairly simple template for log format is provided, but it is recommended to overwrite this with actual data:
        >>> LogReaderBase().example()
        (1, 'I am a case', 'I am an activity')
        """
        return (1, "I am a case", "I am an activity")

    def next(self):
        """Overwrite this method with your business logic
        To signal end of events, use "raise StopIteration"

        Example:
        >>> class LogReaderTest(LogReaderBase):
        ...     def __init__(self):
        ...         self.c = 0
        ...         self.max = 3
        ...     def next(self):
        ...         if self.c < self.max:
        ...             self.c = self.c + 1
        ...             return self.c
        ...         else:
        ...             raise StopIteration    
        >>> test = LogReaderTest()
        >>> [i for i in test]
        [1, 2, 3]
        """
        raise NotImplementedError()

    def __len__(self):
        return self.len()

    def len(self):
        """ Optional function to return the length of the log.

        You can overwrite this method to give the size of the log, useful when you can know a priori how much data you will get like in a file or
        the result of ElasticSearch. If not overwritten, it will throw an error.

        >>> class LogReaderTest(LogReaderBase):
        ...     def __init__(self):
        ...         self.c = 0
        ...         self.max = 3
        ...     def next(self):
        ...         if self.c < self.max:
        ...             self.c = self.c + 1
        ...             return self.c
        ...         else:
        ...             raise StopIteration    
        >>> len( LogReaderTest() )
        Traceback (most recent call last):
        ...
        NotImplementedError

        Now implementing length:
        >>> class LogwithLength(LogReaderTest):
        ...     def len(self):
        ...         return 3
        >>> test = LogwithLength()
        >>> len( test )
        3
        >>> [i for i in test]
        [1, 2, 3]
        """
        raise NotImplementedError



if __name__ == '__main__':
    """If this file is called directly it will execute a self test 
    """
    doctest.testmod()
