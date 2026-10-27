#!/usr/bin/env bash

echo "Day 07 - System Information Pipeline"

echo "Current user:"
whoami

echo
echo "Operating System:"
cat /etc/os-release | grep "^PRETTY_NAME"

echo
echo "Kernel Version:"
uname -r

echo
echo "CPU Information:"
lscpu | grep "^Model name"

echo
echo "Memory Information:"
free -h | grep "Mem:"

echo
echo "Disk Information:"
df -h | grep "/$"
