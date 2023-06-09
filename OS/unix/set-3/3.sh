#!/bin/bash

# Write a script that adds up the sizes reported by the ls
# command for the files in the current directory. The script
# should print out only the total number of bytes used.

size=0

for file in *; do
    if [[ -f $file ]]; then
        ls_info=$(ls -l $file)
        size=$(($size + $(echo "$ls_info" | cut -d " " -f 5)))
    fi
done

echo "Total size used by files in current directory: $size"
