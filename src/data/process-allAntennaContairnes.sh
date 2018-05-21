#!/bin/bash

# cd procdelays

echo "Result will be stored in data/processed/AntennaCasesCounts.txt ... do a tail -f on it."
rm data/processed/AntennaCasesCounts.txt


for i in $(find data/interim/ -name *acs*);  do

    echo "Processing $i"
    echo "python src/examples/processAlmaContainerANTENNA.py $i --info >&1 >>  data/processed/AntennaCasesCounts.txt  "
          python src/examples/processAlmaContainerANTENNA.py $i --info >&1 >>  data/processed/AntennaCasesCounts.txt 

    tail data/processed/AntennaCasesCounts.txt 

    echo "=== analysis ended at $(date) ==="
    echo "=== analysis ended at $(date) ===" >&1 >>  data/processed/AntennaCasesCounts.txt  
done 


echo
echo "...Everything processed."

