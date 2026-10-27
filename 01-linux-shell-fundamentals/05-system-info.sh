#!/usr/bin/env bash

# This script displays basic system information.
# These commands are commonly used when working with Linux servers.

echo "======================================"
echo "        SYSTEM INFORMATION"
echo "======================================"

# hostnamectl shows information about the Linux system.
echo
echo "Hostname:"
hostname

# uname -s shows the operating system/kernel name.
echo
echo "Operating System:"
uname -s

# uname -r shows the kernel release/version.
echo
echo "Kernel Version:"
uname -r

# Architecture of the system.
echo
echo "Architecture:"
uname -m

# Shows the current logged-in user.
echo
echo "Current User:"
whoami

# Shows the current working directory.
echo
echo "Current Directory:"
pwd

# Shows how long the system has been running.
echo
echo "System Uptime:"
uptime

echo
echo "======================================"
