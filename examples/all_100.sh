#!/bin/sh

IFS=$'\n' read -d '' -r -a lights < lights.txt

for light in "${lights[@]}"
do
    ../bin/hue l -s --id $light --state '{"bri":100}'
done

