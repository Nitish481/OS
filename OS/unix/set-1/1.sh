#!/bin/bash

# Write a shell script which accepts length and breadth of
# a rectangle and calculates the area and perimeter of
# the rectangle.

while true; do
    read -p "Enter the length of the rectangle: " length

    if [[ $length =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]] && [[ $(echo "$length > 0" | bc) -eq 1 ]]; then
        echo $length
        break
    else
        echo "Invalid input!"
    fi
done

while true; do
    echo
    read -p "Enter the breadth of the rectangle: " breadth

    if [[ $breadth =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]] && [[ $(echo "$breadth > 0" | bc) -eq 1 ]]; then
        echo $breadth
        break
    else
        echo "Invalid input!"
    fi
done

area=$(echo "$length * $breadth" | bc)
echo -e "\nArea of the rectangle: $area"

perimeter=$(echo "2 * $(echo "$length + $breadth" | bc)" | bc)
echo -e "Perimeter of the rectangle: $perimeter"
