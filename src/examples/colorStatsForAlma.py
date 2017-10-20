"""
Analysis on obtained colors, by case
"""
import sys
from src import *
from src.models.AlmaClasses import *


THRESHOLD = 0.05

for case in [ "CaseAntennaInArray", "CaseRadioSetup", "CaseAntennaObserving" ]:
# for case in [ "CaseAntennaInArray"]:

    db = DelaysFileDB( caseName=case, path=config.FILEPATH_DB+"/delays")  
    # db = DelaysFileDB( caseName="CaseRadioSetup", path=config.FILEPATH_DB+"/delays")  

    print "Case Name         \t:", db.caseName

    uniques = db.unique_colors()
    print "Unique colors     \t: (%s) " % len(uniques) , db.unique_colors()[:50]

    total = db.total_cases()
    print "Total Cases       \t:", total

    print "Total Pairs       \t:", db.total_pairs()

    instances_per_pair = db.instances_per_pair()
    num_delays = db.delays_per_pair()

    # instances_filtered = []
    result = []
    for pair, instances in instances_per_pair:
        if float(instances)/float(total) >= THRESHOLD:
            # instances_filtered.append( (pair, count) )
            result.append( (pair, instances, 100 * instances/total, num_delays[pair]) )

    # By instances
    result = sorted(result, key=lambda r: (r[1], r[3], r[0]), reverse=True )

    # By delays
    # result = sorted(result, key=lambda r: (r[3], r[1], r[0]), reverse=True )

    print "Instances per Pair (Showing %s, ommited=%s because %s%% > %% cases)" % ( len(result), len(instances_per_pair)-len(result) , THRESHOLD*100 )
    for r in result:
        print "%s = %s cases (%s%%) with %s delays in total" % r


    print("=====================")
# result.append(("Instances per Case", db.instances_per_case()[:20]))
# result.append(("", ))
