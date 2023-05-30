#!/bin/bash

# Write a shell script which displays vendor id, model name,
# cpu MHz, cache size information about the processor present
# in your computer. Hint: most of this information can be
# obtained by reading the file /proc/cpuinfo.

cpu_info=$(head /proc/cpuinfo)

echo "Vendor ID: $(echo "$cpu_info" | grep vendor_id | cut -d ":" -f 2)"
echo "Model Name: $(echo "$cpu_info" | grep "model name" | cut -d ":" -f 2)"
echo "CPU MHz: $(echo "$cpu_info" | grep "cpu MHz" | cut -d ":" -f 2)"
echo "Cache size: $(echo "$cpu_info" | grep "cache size" | cut -d ":" -f 2)"
