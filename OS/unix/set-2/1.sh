#!/bin/bash

# Write a shell script which, for all files in present
# directory displays whether it is a regular file or a
# directory.

for file in *; do
    if [[ -d $file ]]; then
        echo "$file is a directory"
    elif [[ -f $file ]]; then
        echo "$file is a file"
    else
        echo "$file is not a valid file/directory"
    fi
done
