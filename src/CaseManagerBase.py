""" Holds the logic to split logs in cases
.. module:: CaseManager

A case is an ordered subset of a log the contains events comparables between them.

"""
import doctest

class CaseManagerBase:
    """ Base case for case manager
    This class splits logs in two dimensions:
    1) Detects parallel executions of cases
    2) Detects start / stop events for cases.

    """
    def __init__(self):
        self.history = []
        self.uniques = {}
        self.verbose = False
        # The very first event is special. If you use the same marke for start/end , then the second instance is the one that must stop this machine.
        self.isFirstEvent = True

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
        if self.isFirstEvent:
            return False
        else:
            return self.conditionForEndEvent(event)

    def isValidEvent(self, event):
        """ Override if you need to filter events based on some criteria. True by default
        """
        return True

    def conditionForEndEvent(self, event):
        raise NotImplementedError

    # Some magic here....
    def appendActivity(self, ts, activity):
        self.history.append( (ts, activity) )
        if activity not in self.uniques.keys():
            self.uniques[activity] = 1
        else:
            self.uniques[activity] = self.uniques[activity] + 1
        self.isFirstEvent = False

    def getTotalEvents(self):
        return len(self.history)

    def getUniqueActivities(self):
        return self.uniques.keys()

    def finish(self):
        # Do whatever you need to do here
        # For example... count the delays and send to PairsDB
        pass

    def stats(self):
        return {
            'TOTAL_EVENTS': self.getTotalEvents() ,
            'UNIQUE_ACTIVITIES': self.getUniqueActivities(),
            'TRACE': ["C%s" % event[1] for event in self.history]
        }

    def worldStats(self):
        stats = self.stats()
        gentle = stats["TRACE"][:200]
        if len(gentle) == len(stats["TRACE"]):
            gentleTrace = " ".join(gentle)
        else:
            gentleTrace = " ".join(gentle) + " ...(%s more)" % ( len(stats["TRACE"])-len(gentle) )
        return "EVENTS=%s UNIQUES=%s TRACE=%s" % (stats["TOTAL_EVENTS"], len(stats["UNIQUE_ACTIVITIES"]), gentleTrace )




if __name__ == '__main__':
    """If this file is called directly it will execute a self test 
    """
    doctest.testmod( optionflags = doctest.ELLIPSIS )

