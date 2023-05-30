#!/bin/bash

# Write a shell script to find out how many file and directory
# are there in the current directory. Also list the file and
# directory names separately.

for file in *; do
    ((count++))
done

echo -e "Total files and directories in current directory: $count\n"

echo -e "Files and directories in current directory:"
for file in *; do
    if [[ -d $file ]]; then
        echo "$file is a directory"
    elif [[ -f $file ]]; then
        echo "$file is a file"
    else
        echo "$file is not a valid file/directory"
    fi

done
