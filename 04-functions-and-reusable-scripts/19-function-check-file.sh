#!/usr/bin/env bash

# ==========================================
# Script 19: Function to Check a File
# ==========================================
# This script demonstrates how a function can
# receive a filename as an argument and check
# whether the file exists.
#
# $1 represents the first argument passed
# to the function.
# ==========================================


echo "========== File Check Example =========="


# Create a function to check whether a file exists.
check_file() {

    file="$1"

    if [[ -f "$file" ]]; then
        echo "File exists: $file"
    else
        echo "File does not exist: $file"
    fi
}


# Ask the user for a filename.
read -p "Enter a filename: " filename


# Call the function with the filename.
check_file "$filename"


echo
echo "File check completed."
echo "========================================"
