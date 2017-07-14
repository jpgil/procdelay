"""
Example: process ALMA logs, CONTROL/ANTENNA/cppContainer
# TODO: Translate this to Jupyter
"""
import sys
import re
from src import *
from src.LR_AlmaContainerFile import *

COLOR_INSTANCES_THRESHOLD = 0

# This variable holds all the delay extractor machines 
pool = {}

# Specialized reader
logReader = LR_AlmaContainerFile(sys.argv[1])

# Palette to color the events
palette = PaletteBase( colorFunction = paintedByAlma )


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
        # Process this last event anyway
        if case.isValidEvent(event):
            case.appendActivity( ts=event[0], activity=colorIdx )
        logging.debug( "%s : C_%s : %s" % (idx, colorIdx, color) )
        # Note that HERE the case should give the statistics of colors to PairsDB.
        case.finish()

        # Now some gentle logging to the world.
        logging.info("case[%s] EVENTS=%s UNIQS=%s" % (idx, case.getTotalEvents(), len(case.getUniqueColors())))

        del(pool[idx])
        logging.debug("case[%s] killed at %s because %s" % (idx, event[0], event[1]))


    # FACTORY for new cases.

    # ThisCase knows about start / end events only for THIS CASE.
    for ThisCase in [CaseAntennaStartup, CaseAntennaObserving, CaseAntennaInArray, CaseRadioSetup]:

        if ThisCase.isStartEvent(event):
            caseId, caseInstance = ThisCase.newCase(basedOn=event)

            if caseId in pool.keys():
                history = []
                for entry in pool[caseId].history:
                    history.append( (entry[0], palette.colorFromIndex(entry[1])) )
                raise ValueError("Error in your logic, buddy. There is already an active case. Check this!\n." \
                    + "%s \n%s" % (event[1], repr(history).replace("'),", "'),\n") ))

            pool[caseId] = caseInstance
            logging.debug("case[%s] created at %s because %s" % (caseId, event[0], event[1]))


    # Now... deliver all COLORED events to the cases in the pool
    for idx, case in pool.iteritems():
        if case.isValidEvent(event):
            case.appendActivity( ts=event[0], activity=colorIdx )
        # I should add the trace here, isn't? or maybe inside case class?
        logging.debug( "%s : C_%s : %s" % (idx, colorIdx, color) )
        # if "AntInArray" == idx:
        #     print event




# Just reporting stuff
colors = palette.getColors()
print ("ANALYSIS")
print ("---------")
print ("")
print ("LOG FILE:      %s " % sys.argv[1])
print ("LOG SIZE:      %s " % len(logReader))
print ("UNIQUE COLORS: %s " % len(colors))
print ("")
# print ("COLOR DICTIONARY")
# for i in range (0, len(colors) ):
#     if counting[i] > COLOR_INSTANCES_THRESHOLD:
#         print ("COLOR_%s\t(%s times)\t:%s" % (i, counting[i], colors[i]) )