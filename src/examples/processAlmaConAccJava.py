"""
Example: process ALMA logs, CONTROL/ACC/javaContainer
# TODO: Translate this to Jupyter
"""
import sys
from src import *
from src.LR_AlmaContainerFile import LR_AlmaContainerFile
# from src.AlmaPalette import AlmaPalette

COLOR_INSTANCES_THRESHOLD = 0

logging.info("Code imported")


logReader = LR_AlmaContainerFile(sys.argv[1])
logging.info("New class: %s" % logReader)

# palette = AlmaPalette()
palette = PaletteBase()

counting = {}
def countColor(index):
    if not index in counting.keys():
        counting[index] = 1
    else:
        counting[index] = counting[index]+1

# caseManager = CM_AlmaContainerControlAccJava()
# caseManager = CM_AlmaContainerControlAccJava( reader=logReader )
# """
# During binding caseManager should checks if logReader speaks the same language.
# """

for event in logReader:
    logging.debug(event)

    # These events has the form ( timestamp, text ).
    # I am interested in the text only
    idx, color = palette.addEvent( event[1] )
    countColor(idx)



    # """
    # caseManager.readEvents() calls internally to logReader.next() until no more elements can be read.
    # """
    # if caseManager.isStartEvent(event):
    #     """ Search new cases to spawn
    #     """
    #     caseManager.appendCase(event)

    # if caseManager.isEndEvent(event):
    #     """ Search new cases to finish
    #     """
    #     for case in caseManager.getCases(event):
    #         caseManager.endCase(case)

    # for thisCase in caseManager.getCases(event):
    #     """ Send 
    #     """


colors = palette.getColors()
print ("ANALYSIS")
print ("---------")
print ("")
print ("LOG FILE:      %s " % sys.argv[1])
print ("LOG SIZE:      %s " % len(logReader))
print ("UNIQUE COLORS: %s " % len(colors))
print ("")
print ("COLOR DICTIONARY")
for i in range (0, len(colors) ):
    if counting[i] > COLOR_INSTANCES_THRESHOLD:
        print ("COLOR_%s\t(%s times)\t:%s" % (i, counting[i], colors[i]) )