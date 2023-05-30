#!/bin/bash

# Write a shell script to display a summary of the disk space
# usage for each directory argument (and any subdirectories),
# both in terms of bytes, and kilobytes or megabytes
# (whichever is appropriate). [du -b]

if [ -z "$1" ]; then
    echo "No directory supplied as argument"
    exit 0
fi

for dir in "$@"; do
    if [[ -d $dir ]]; then
        echo -e "Summary of the disk space usage $dir & its subdirectories:\n"
        echo "In bytes:"
        echo -e "$(du -b $dir)\n"

        echo "In kilobytes or megabytes:"
        echo -e "$(du -h $dir)\n"

        echo "Total disk space usage:"
        echo -e "$(du -sh $dir)\n"
    else
        echo -e "$dir is not a directory\n"
    fi
done
