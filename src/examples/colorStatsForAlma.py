"""
Analysis on obtained colors, by case
"""
import sys
from src import *
from src.models.AlmaClasses import *


THRESHOLD = 0.2

for case in [ "CaseAntennaInArray", "CaseRadioSetup", "CaseAntennaObserving" ]:

    db = DelaysFileDB( caseName=case, path=config.FILEPATH_DB+"/delays")  
    # db = DelaysFileDB( caseName="CaseRadioSetup", path=config.FILEPATH_DB+"/delays")  

    print "Case Name         \t:", db.caseName

    uniques = db.unique_colors()
    print "Unique colors     \t: (%s) " % len(uniques) , db.unique_colors()[:50]

    total = db.total_cases()
    print "Total Cases       \t:", total

    print "Total Pairs       \t:", db.total_pairs()

    instances_per_pair = db.instances_per_pair()

    instances_filtered = []
    for color, count in instances_per_pair:
        if float(count)/float(total) >= THRESHOLD:
            instances_filtered.append( (color, count) )
            # print "%s = %s instances (%s%%)" % (color, count, 100 * count/total )

    print "Instances per Pair (%s ommited because they appears in less than %s%% of the cases)" % ( len(instances_per_pair)-len(instances_filtered) , THRESHOLD*100 )
    for color, count in instances_filtered:
        print "%s = %s instances (%s%%)" % (color, count, 100 * count/total )

    print("=====================")
# result.append(("Instances per Case", db.instances_per_case()[:20]))
# result.append(("", ))
