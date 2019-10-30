#!/bin/bash

set -e 

rm combined.o5m combined.out &
wget "https://download.geofabrik.de/europe/switzerland-latest.osm.pbf" -O - | osmconvert --out-o5m - > switzerland.o5m &
wget "https://download.geofabrik.de/europe/spain-latest.osm.pbf" -O - | osmconvert --out-o5m - > spain.o5m &
wait

mkfifo "valencia.o5m" "picos.o5m" "kandersteg.o5m"

osmconvert --out-o5m -b=6.5,45,8,47 switzerland.o5m > kandersteg.o5m &
osmconvert --out-o5m -b=-1,39,0.5,40 spain.o5m > valencia.o5m &
osmconvert --out-o5m -b=-6,42.5,-3.5,44 spain.o5m > picos.o5m &

echo "Combining"
osmconvert *.o5m --out-o5m > combined.out
rm *.o5m
mv combined.out combined.o5m
