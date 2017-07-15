#!/bin/bash

# cd procdelays

rm data/processed/AntennaCasesCounts.txt

(for i in $(find data/interim/ -name *acs*);  do
    echo "Processing $i"
    python src/examples/processAlmaContainerANTENNA.py $i 2>&1 
    echo "=== analysis ended at $(date) ===" 
done ) > data/processed/AntennaCasesCounts.txt 


echo
echo "...Everything processed."
