"""
Example: process ALMA logs, CONTROL/ANTENNA/cppContainer
# TODO: Translate this to Jupyter
"""
import sys
from src import *
from src.models.AlmaClasses import *
import logging


# Parameters! Could I move eelsewhere?
# --------
# CASE_LIST = [CaseAntennaStartup, CaseAntennaObserving, CaseAntennaInArray, CaseRadioSetup]
CASE_LIST = [CaseAntennaStartup]
# CASE_LIST = [CaseAntennaObserving]
# CASE_LIST = [CaseAntennaObserving, CaseRadioSetup]


# Specialized reader
logReader = LR_AlmaContainerFile(sys.argv[1])

# Palette to color the events
palette = PaletteFileDB(filename='data/processed/colors-almaAntenna.pkl', colorFunction=paintedForAlmaAntennas )


# This sample is enough to trigger a CaseAntennaInArray complete case.
sample = [ (1498944239963, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/Array002)'), 
(1498944239976, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
(1498944239978, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
(1498944239981, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
(1498944239986, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
(1498944239988, '[CONTROL/DA41 - void Control::AntennaImpl::configureSAS(const Control::ResourceId&)] Antenna: DA41 has set the SAS photonic reference to: PhotonicReference1. SAS polarization has been optimized.'), 
(1498944239989, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/LLC)'), 
(1498944245003, '[CONTROL/DA41 - virtual void Control::AntennaImpl::assign(const char*)] Antenna DA41 assigned to array Array002') ]


# Main logic from here
# --------
pool = CasesPool(CASE_LIST)

for event in logReader:
# for event in sample: 
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
