#!/bin/bash

# Write a shell script which accepts basic salary of an
# employee and calculates net salary and displays the
# salary slip.

while true; do
    read -p "Enter the basic salary: " basic

    if [[ $basic =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]] && [[ $(echo "$basic > 0" | bc) -eq 1 ]]; then
        echo $basic
        break
    else
        echo "Invalid input!"
    fi
done

da=$(echo "$basic * 0.30" | bc)
echo -e "\nDearness Allowance: $da"

hra=$(echo "$basic * 0.25" | bc)
echo -e "House Rent Allowance: $hra"

net=$(echo "$basic + $da + $hra" | bc)
echo -e "Net Salary: $net"
