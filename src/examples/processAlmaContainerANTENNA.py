"""
Example: process ALMA logs, CONTROL/ANTENNA/cppContainer
# TODO: Translate this to Jupyter
"""
import sys
from src import *
from src.models.AlmaClasses import *


# Parameters! Could I move eelsewhere?
# --------
# CASE_LIST = [CaseAntennaStartup, CaseAntennaObserving, CaseAntennaInArray, CaseRadioSetup]
CASE_LIST = [CaseAntennaInArray, CaseRadioSetup]
# CASE_LIST = [CaseAntennaObserving]


# Specialized reader
logReader = LR_AlmaContainerFile(sys.argv[1])

# Palette to color the events
palette = PaletteFileDB(filename='data/processed/colors-almaAntenna.pkl', colorFunction=paintedForAlmaAntennas )


# Main logic from here
# --------
pool = CasesPool(CASE_LIST)

for event in logReader:
    # These events has the form ( timestamp, text ). I am interested in the text only (event[1])
    colorIdx, color = palette.addEvent( event[1] )

    pool.removeEndedCases(event=event, ts=event[0], activity=colorIdx)
    pool.spawnNewCases( event )
    pool.appendActivity(event=event, ts=event[0], activity=colorIdx)

pool.removeAfterLastEvent()



# Just reporting stuff
print ("ANALYSIS END")
print ("---------")
print ("LOG FILE:      %s " % sys.argv[1])
print ("LOG SIZE:      %s " % len(logReader))
print ("UNIQUE COLORS: %s " % len(palette.getColors()))
