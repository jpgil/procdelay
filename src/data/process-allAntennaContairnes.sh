#!/bin/bash

# cd procdelays

rm data/processed/AntennaCasesCounts.txt

for i in $(find data/interim/ -name *acs*);  do
    echo "Processing $i"
    python src/examples/processAlmaContainerANTENNA.py $i &>1 >>  data/processed/AntennaCasesCounts.txt  
    echo "=== analysis ended at $(date) ===" &>1 >>  data/processed/AntennaCasesCounts.txt  
done 


echo
echo "...Everything processed."

