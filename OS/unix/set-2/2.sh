#!/bin/bash

# The PATH variable is an environment variable that contains
# an ordered list of paths that Linux will search for
# executables when running a command. Write a shell script to
# display all the directories in the PATH variable in a simple
# way, i.e., one line per directory. In addition, display
# information about each directory, such as the permissions
# and the modification times.

IFS=":" read -a path_dirs <<<"$PATH"

for dir in ${path_dirs[@]}; do
    echo $dir

    if [[ -d $dir ]]; then
        echo "Permissions: $(echo $(ls -ld $dir) | cut -d " " -f 1)"
        echo -e "Modification Times: $(echo $(ls -ld $dir) | cut -d " " -f 6,7,8)\n"

    else
        echo -e "This directory does not exist\n"
    fi
done
