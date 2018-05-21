""" Holds the logic to split logs in cases
.. module:: CaseManager

A case is an ordered subset of a log the contains events comparables between them. There are two kind of objects:

event: (object) The raw event could be a string or a complex object like JSON.  This object must be consistent across the process and
it is used for validation purposes only.
activity: (ts, label) A labelling of the activities from an event, with positive integer representing a timestamp. 
Semantically, it is the result of a colouring function over the event and keeping the time of occurrence. 

Any Case instance has three main stages of operations:

1) Case creation: based on incoming events you need to specify 3 items here:

1.a) Case start condition: all events meeting this condition triggers a new case. It is a static method, it holds no object values.
1.b) Case end condition: all events meeting this condition triggers an end of an existing case, unless it is the very first event in the case. 
It is a method over an instance, then you can store values in the instance to be used inside the condition (like ad-hocs substrings)
1.c) Case ID: you can decide how to specify an ID. If you run parallel cases, the case ID becomes important to do log splitting.

2) Event recollection

Once a case is created a stream of (ts, activities) extracted from events are ingested one by one, following this logic:

2.a) It is a valid event? This condition shall be executed outside this class in a higher level manager that delivers events to all cases.
2.b) Activity ingestion. The full trace is stored in memory
2.c) Stream processing engines. It could be attached one or more engines to do some stream processing over the activity and over the state of the case.

3) Post processing

Same engines than before, but doing a process over the finished case. This is the last step before destruction and must be called from outside.

"""
import doctest
import logging

class CaseManagerBase:
    """ Base case for case manager
    This class splits logs in two dimensions:
    1) Detects parallel executions of cases
    2) Detects start / stop events for cases.

    Basic example:
    >>> CaseManagerBase.newCase( basedOn="sample event" )
    ('ID', <__main__.CaseManagerBase instance at ...
    """
    def __init__(self):
        self.history = []
        self.uniques = {}
        self.myName =  str(self.__class__).split(".")[-1]
        # The very first event is special. If you use the same marker for start/end , then the second instance is the one that must stop this machine.
        self.isFirstEvent = True
        self._processingEngines = self.processingEngines()
        self.log = logging.getLogger( self.myName )
        # Validate processing engines?

    @staticmethod
    def isStartEvent(event):
        raise NotImplementedError

    @staticmethod
    def newCase(basedOn):
        """Factory method.
        It returns also an ID to be used as case identifier. 

        :returns:  (string, object) -- caseID and case instance
        """
        return "ID", CaseManagerBase()

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
        """ Condition based on event that must trigger the end of execution of the case.
        You can also choose the same start condition, the first event is indeed recognized as different than any other event specifically for this case.

        :returns:  bool
        """
        raise NotImplementedError

    def processingEngines(self):
        """ List instances of case processing engines.

        They must be inherited from CaseProcessingEngineBase and being initialized here.
        """
        return []

    # Some magic here....
    def appendActivity(self, ts, activity):
        self.history.append( (ts, activity) )
        if activity not in self.uniques.keys():
            self.uniques[activity] = 1
        else:
            self.uniques[activity] = self.uniques[activity] + 1
        self.isFirstEvent = False
        for engine in self._processingEngines:
            if engine.isEnabled:
                engine.streamProcess(ts, activity)

    def getTotalEvents(self):
        return len(self.history)

    def getUniqueActivities(self):
        return self.uniques.keys()

    def finish(self):
        # Do whatever you need to do here
        # For example... count the delays and send to PairsDB
        for engine in self._processingEngines:
            if engine.isEnabled:
                engine.postProcess()

    def stats(self):
        return {
            'TOTAL_EVENTS': self.getTotalEvents() ,
            'UNIQUE_ACTIVITIES': self.getUniqueActivities(),
            'TRACE': ["C%s" % event[1] for event in self.history]
        }

    def worldStats(self):
        stats = self.stats()
        gentle = stats["TRACE"][:50]
        if len(gentle) == len(stats["TRACE"]):
            gentleTrace = " ".join(gentle)
        else:
            gentleTrace = " ".join(gentle) + " ...(%s more)" % ( len(stats["TRACE"])-len(gentle) )
        returnTxt = "EVENTS=%s UNIQUES=%s " % (stats["TOTAL_EVENTS"], len(stats["UNIQUE_ACTIVITIES"]) )
        
        returnTxt = returnTxt + " ".join ([eng.worldStats() for eng in self._processingEngines if eng.isEnabled] )

        # returnTxt = returnTxt + " TRACE=%s" % gentleTrace

        return returnTxt




# Move elsewhere
class CaseProcessingEngineBase:
    def __init__(self, parent=None, enabled=True):
        self.isEnabled = enabled
        self.parent = parent
        self.myName =  str(self.__class__).split(".")[-1]
        self.log = logging.getLogger( "%s.%s" % (self.parent.myName, self.myName) )

    def streamProcess(self, ts, activity):
        return

    def postProcess(self):
        return

    def worldStats(self):
        """
        Single line of stats to be append to case worldStats
        """
        return "%s: No stats given" % self.myName


# Move elsewhere
class CasesPool:
    def __init__(self, cases_list):
        self.pool = {}
        self.cases_list = cases_list
        self.myName =  str(self.__class__).split(".")[-1]
        self.log = logging.getLogger( self.myName )

    def removeEndedCases(self, event, ts, activity):
        what2kill = []
        for idx, case in self.pool.iteritems():
            if case.isEndEvent(event):
                what2kill.append(idx)

        # Kill now.
        for idx in what2kill:
            case = self.pool[idx]
            # Add last event just in case.
            self.appendToCase(event, ts, activity, case )
            case.finish()
            self.log.info("%s[%s] %s" % (case.myName, idx, case.worldStats()))

            del(self.pool[idx])
            self.log.debug("case[%s] killed at %s because %s" % (idx, event[0], event[1]))

    def appendToCase(self, event, ts, activity, case):
        if case.isValidEvent(event):
            case.appendActivity( ts, activity )

    def spawnNewCases(self, event):
        for ThisCase in self.cases_list:

            if ThisCase.isStartEvent(event):
                caseId, caseInstance = ThisCase.newCase(basedOn=event)

                # Is case already active? Then fail
                if caseId in self.pool.keys():
                    caseInstance.log.info("case[%s] %s" % (caseId, self.pool[caseId].worldStats()))
                    raise ValueError("[%s] Error in your logic, buddy. There is already an active case. Check above and belowe offending event:\n%s" % (caseId, event) )

                self.pool[caseId] = caseInstance
                # logging.info("case[%s] created" % caseId)
                caseInstance.log.debug("[%s] created at %s because %s" % (caseId, event[0], event[1]))

    def appendActivity(self, event, ts, activity):
        for idx, case in self.pool.iteritems():
            if case.isValidEvent(event):
                case.appendActivity( ts, activity )

    def removeAfterLastEvent(self):
        for idx in self.pool.keys():
            self.pool[idx].finish()
            self.log.info("%s[%s] %s" % (self.pool[idx].myName, idx, self.pool[idx].worldStats()))
            self.log.info("case[%s] KILL because no more events are available" % idx)
            del(self.pool[idx])




if __name__ == '__main__':
    """If this file is called directly it will execute a self test 
    """
    doctest.testmod( optionflags = doctest.ELLIPSIS )

