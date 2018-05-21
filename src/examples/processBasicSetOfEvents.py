"""
Example: process ALMA logs, CONTROL/ANTENNA/cppContainer
# TODO: Translate this to Jupyter
"""
import sys
from src import *
from src.models.AlmaClasses import DelaysDetectorEngine, DelaysFileDB
from src.models.AlmaClasses import TraceStoreEngine, NullEngineDB
import logging


# Static sample.
sample_set = [ 
	(0, "A"),  
	(5, "B"),  
	(10, "C"),  
	(15, "B"),  
	(20, "D"),  
	(25, "C"),  
	(30, "E"),  
	(35, "B"),  
	(40, "F"),  
	(45, "C"),  
	(50, "E"),  
	(55, "D"),  
	(60, "F"),  
	(65, "Z")
]


# Main logic from here
# --------
class MySimpleCase(CaseManagerBase):
    @staticmethod
    def isStartEvent(event):
        return "A" == event[1]

    def conditionForEndEvent(self, event):
        return "Z" == event[1]

    @staticmethod
    def newCase(basedOn):
        return "MySimpleCase", MySimpleCase()

    def processingEngines(self):
        return [ 
            DelaysDetectorEngine(parent=self, enabled=True, db=DelaysFileDB(caseName=self.myName, path=config.FILEPATH_DB+"/delays")),
            TraceStoreEngine(parent=self, enabled=True, db=NullEngineDB())             
        ]

pool = CasesPool( [MySimpleCase] )

for event in sample_set: 
    # These events has the form ( timestamp, text ). I am interested in the text only (event[1])
    timestamp = event[0] 
    activity = event[1] 

    pool.removeEndedCases(event=event, ts=timestamp, activity=activity)
    pool.spawnNewCases( event )
    pool.appendActivity(event=event, ts=timestamp, activity=activity)

pool.removeAfterLastEvent()



# Just reporting stuff
print ("ANALYSIS END")
print ("---------")
