#!/bin/bash

# Write a shell script which accepts a five digit number and
# prints the reverse number.

while true; do
    read -p "Enter the five digit number: " num

    if [[ $num =~ ^[0-9]+$ ]] && [[ $num -ge 10000 ]] && [[ $num -le 99999 ]]; then
        echo $num
        break
    else
        echo "Invalid input!"
    fi
done

num1=$num
rev=0

while [ $num -ne 0 ]
do
    rev=$[($rev * 10) + ($num % 10)]
    num=$[$num / 10]
done

echo -e "\nReverse of digits of $num1: $rev"
