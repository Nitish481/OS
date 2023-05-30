#!/bin/bash

# Write a shell script which reads a input file that contains
# three integers in each line. The script should display the
# sum of all integers in each line.

while true; do
    echo
    read -p "Enter the input file: " file

    if [[ -f $file ]]; then
        echo $file
        break
    else
        echo "File does not exist!"
    fi
done

while read -r line; do
    IFS=" " read -a line_arr <<<"$line"

    for num in ${line_arr[@]}; do
        if ! [[ $num =~ ^[+-]?[0-9]+$ ]]; then
            echo "$num is not a number!"
            exit 1
        fi
    done
done <$file

while read -r line; do
    IFS=" " read -a line_arr <<<"$line"

    sum=0
    for num in ${line_arr[@]}; do
            echo $num
            
            sum=$(($sum + $num))
    done

    echo "---"
    echo $sum
    echo

    sum=0
done <$file
