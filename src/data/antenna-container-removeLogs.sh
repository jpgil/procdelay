#!/bin/bash
# Make stripped versions of ANTENNA containers

ORIGIN=$(dirname $0)/../../data/raw/ANTENNA/
DEST=$(dirname $0)/../../data/interim/

[ ! -e $ORIGIN ] && echo "$ORIGIN must be created" && exit 1
[ ! -e $DEST ] && echo "$DEST must be created" && exit 1

echo "about to strip unseless logs from $(ls $ORIGIN/*acs* | wc -l) files"

for file in $(find $ORIGIN -name *acs*); do 
  egrep -v "(archive_delta_percent does not exist|Failed to read static data for|DAOProxy::get_field)" $file > $DEST/$(basename $file)_STRIPPED
done

echo " Done. Check the contents of $DEST."
