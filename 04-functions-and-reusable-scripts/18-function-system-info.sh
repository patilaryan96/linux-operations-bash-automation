#!/usr/bin/env bash

# ==========================================
# Script 18: Function for System Information
# ==========================================
# This script demonstrates how functions can
# be used to organize system information.
#
# Commands used:
# hostname -> displays system hostname
# whoami   -> displays current user
# uptime   -> displays system uptime
# ==========================================


echo "========== System Information =========="


# Create a function for system information.
system_info() {

    echo "Hostname: $(hostname)"
    echo "Current User: $(whoami)"
    echo "System Uptime:"
    uptime
}


# Call the function.
system_info


echo
echo "System information displayed successfully."
echo "========================================="
