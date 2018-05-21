"""
Example: process ALMA logs, CONTROL/ANTENNA/cppContainer
# TODO: Translate this to Jupyter
"""
import sys
from src import *
from src.models.AlmaClasses import *
import logging

from time import mktime, strptime

# Parameters! Could I move eelsewhere?
# --------
# CASE_LIST = [CaseAntennaStartup, CaseAntennaObserving, CaseAntennaInArray, CaseRadioSetup]
# CASE_LIST = [CaseAntennaInArray, CaseRadioSetup]
#CASE_LIST = [CaseRadioSetup]
#CASE_LIST = [CaseAntennaObserving]

# Don't use CaseAntennaStartup
CASE_LIST = [CaseAntennaObserving, CaseAntennaInArray, CaseRadioSetup]


# Specialized reader
logReader = LR_AlmaContainerFile(sys.argv[1])

def toMilliseconds(timestamp):
    # Version for Python 2.7
    T = timestamp[0:23]
    T = T[0:4]+"-"+T[5:7]+"-"+T[8:10]+"T"+T[11:13]+":"+T[14:16]+":"+T[17:19]+"."+T[20:23]
    milliseconds = int( mktime( strptime(T[0:19], "%Y-%m-%dT%H:%M:%S") )*1000 + int(T[20:23]) )

    # milliseconds = int(1000*datetime.datetime( int(T[0:4]) , int(T[5:7]), int(T[8:10]), int(T[11:13]), int(T[14:16]), int(T[17:19]), int(T[20:23])*1000).timestamp())
    return milliseconds


# Palette to color the events
palette = PaletteFileDB(filename='%s/colors-almaAntenna.pkl' % config.FILEPATH_DB, colorFunction=paintedForAlmaAntennas )


# This sample is enough to trigger a CaseAntennaInArray complete case.
# sample = [ (1498944239963, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/Array002)'), 
# (1498944239976, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
# (1498944239978, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
# (1498944239981, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
# (1498944239986, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/SAS)'), 
# (1498944239988, '[CONTROL/DA41 - void Control::AntennaImpl::configureSAS(const Control::ResourceId&)] Antenna: DA41 has set the SAS photonic reference to: PhotonicReference1. SAS polarization has been optimized.'), 
# (1498944239989, '[CONTROL/DA41 - ] ContainerServices::getComponentNonSticky(CONTROL/DA41/LLC)'), 
# (1498944245003, '[CONTROL/DA41 - virtual void Control::AntennaImpl::assign(const char*)] Antenna DA41 assigned to array Array002') ]


# Main logic from here
# --------
pool = CasesPool(CASE_LIST)

for event in logReader:
# for event in sample: 
    # These events has the form ( timestamp, text ). I am interested in the text only (event[1])
    colorIdx, color = palette.addEvent( event[1] )
    ts = toMilliseconds(event[0])
    # ts = event[0]

    pool.removeEndedCases(event=event, ts=ts, activity=colorIdx)
    pool.spawnNewCases( event )
    pool.appendActivity(event=event, ts=ts, activity=colorIdx)

pool.removeAfterLastEvent()



# Just reporting stuff
print ("ANALYSIS END")
print ("---------")
print ("LOG FILE:      %s " % sys.argv[1])
print ("LOG SIZE:      %s " % len(logReader))
