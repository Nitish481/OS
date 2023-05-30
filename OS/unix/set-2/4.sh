#!/bin/bash

# Write a shell script to show your home directory,
# Operating System type, version, release number, kernel
# version and current path setting. Hint: use uname command
# or use content of /proc/sys/kernel/osrelease file.

cpu_info=$(head /proc/cpuinfo)

echo "Home directory: $HOME"
echo "OS type: $(uname -o)"
echo "OS version: $(cat /etc/os-release | grep "PRETTY_NAME" | cut -d '=' -f 2)"
echo "OS release number: $(uname -v)"
echo "Kernel version: $(uname -r)"
echo "Current path: $PATH"
