#!/bin/bash

# The /etc/passwd file stores user account information. It contains
# one entry per line for each user (user account) of the system.
# Each line contains seven fields which are separated by a colon (:)
# symbol. The fields are:

# (i) Username
# (ii) Password
# (iii) User Id
# (iv) Group Id
# (v) User Id Info
# (vi) Home Directory
# (vii) Login Shell

# Write a shell script which accepts a user login name and displays
# detail information about the users as available from the file
# /etc/passwd.

file="/etc/passwd"

while true; do
    read -p "Enter the user login name: " login_name
    detail_info=$(grep ^$login_name: $file)

    if [[ -z "${detail_info}" ]]; then
        echo "User $login_name not found!"
    else
        echo $login_name
        break
    fi
done

IFS=':' read -a arr_split <<< "$detail_info"

fields=(
    "Username"
    "Password"
    "User Id"
    "Group Id"
    "User Id Info"
    "Home Directory"
    "Login Shell"
)

echo -e "\nDetailed user login information of user $login_name:"

for i in {0..6}
do
    echo "${fields[$i]}: ${arr_split[$i]}"
done
