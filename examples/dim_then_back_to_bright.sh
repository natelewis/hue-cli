#!/bin/sh

IFS=$'\n' read -d '' -r -a lights < lights.txt
bri=( 0 50 100 150 200 250 );

for bri in "${bri[@]}"
do
   echo "setting $bri"
   for light in "${lights[@]}"
   do
       ../bin/hue l -s --id $light --state '{"bri":'"$bri"'}'
    done
done

