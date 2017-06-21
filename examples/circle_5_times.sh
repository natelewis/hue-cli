#!/bin/sh

IFS=$'\n' read -d '' -r -a lights < lights.txt
bri=( 0 50 100 150 200 250 );

for i in {1..5}
do

for bri in "${bri[@]}"
do
   echo "setting $bri"
   for light in "${lights[@]}"
   do
       ../bin/hue l -s --id $light --state '{"bri":250}'
       ../bin/hue l -s --id $last_light --state '{"bri":50}'
       last_light=$light
    done
    ../bin/hue l -s --id $light --state '{"bri":50}'
done

done

