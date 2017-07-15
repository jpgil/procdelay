"""
Example: process ALMA logs, CONTROL/ANTENNA/cppContainer
# TODO: Translate this to Jupyter
"""
import sys
import re
from src import *
from src.models.AlmaClasses import *


COLOR_INSTANCES_THRESHOLD = 0
CASE_LIST = [CaseAntennaStartup, CaseAntennaObserving, CaseAntennaInArray, CaseRadioSetup]
# CASE_LIST = [CaseRadioSetup]


print ("ANALYSIS START")
print ("--------------")
print ("LOG FILE:      %s " % sys.argv[1])
print ("")


# This variable holds all the delay extractor machines 
pool = {}

# Specialized reader
logReader = LR_AlmaContainerFile(sys.argv[1])

# Palette to color the events
palette = PaletteFileDB(filename='data/processed/colors-almaAntenna.pkl', colorFunction=paintedForAlmaAntennas )


counting = {}
def countColor(index):
    if not index in counting.keys():
        counting[index] = 1
    else:
        counting[index] = counting[index]+1



# Main logic from here
for event in logReader:
    # logging.debug(event)

    # These events has the form ( timestamp, text ).
    # I am interested in the text only
    colorIdx, color = palette.addEvent( event[1] )
    countColor(colorIdx)

    # ThisCase = CaseAntennaStartup

    # Check what to kill
    what2kill = []
    for idx, case in pool.iteritems():
        if case.isEndEvent(event):
            what2kill.append(idx)

    for idx in what2kill:
        case = pool[idx]
        # Process this last event anyway
        if case.isValidEvent(event):
            case.appendActivity( ts=event[0], activity=colorIdx )
            # logging.debug( "%s : C_%s : %s" % (idx, colorIdx, color) )
        case.finish()

        logging.info("case[%s] %s" % (idx, case.worldStats()))

        del(pool[idx])
        logging.debug("case[%s] killed at %s because %s" % (idx, event[0], event[1]))


    # FACTORY for new cases.

    # ThisCase knows about start / end events only for THIS CASE.
    for ThisCase in CASE_LIST:

        if ThisCase.isStartEvent(event):
            caseId, caseInstance = ThisCase.newCase(basedOn=event)

            if caseId in pool.keys():
                history = []
                for entry in pool[caseId].history:
                    history.append( (entry[0], palette.colorFromIndex(entry[1])) )

                logging.info("%s \n%s" % (event[1], repr(history).replace("'),", "'),\n") ))
                # Now some gentle logging to the world.
                logging.info("case[%s] %s" % (caseId, pool[caseId].worldStats()))

                raise ValueError("[%s] Error in your logic, buddy. There is already an active case. Check above and belowe offending event:\n%s" % (caseId, event) )

            pool[caseId] = caseInstance
            # logging.info("case[%s] created" % caseId)
            logging.debug("case[%s] created at %s because %s" % (caseId, event[0], event[1]))


    # Now... deliver all COLORED events to the cases in the pool
    for idx, case in pool.iteritems():
        if case.isValidEvent(event):
            case.appendActivity( ts=event[0], activity=colorIdx )

        # I should add the trace here, isn't? or maybe inside case class?
        logging.debug( "%s : C_%s : %s" % (idx, colorIdx, color) )


# Events finished, so now I will kill every remaining machine

for idx in pool.keys():

    pool[idx].finish()

    # Now some gentle logging to the world.
    logging.info("case[%s] %s" % (idx, pool[idx].worldStats()))
    logging.info("case[%s] KILL because no more events are available" % idx)
    del(pool[idx])



# Just reporting stuff
colors = palette.getColors()
print ("ANALYSIS END")
print ("---------")
print ("")
print ("LOG SIZE:      %s " % len(logReader))
print ("UNIQUE COLORS: %s " % len(colors))
print ("")
# print ("COLOR DICTIONARY")
# for i in range (0, len(colors) ):
#     if counting[i] > COLOR_INSTANCES_THRESHOLD:
#         print ("COLOR_%s\t(%s times)\t:%s" % (i, counting[i], colors[i]) )