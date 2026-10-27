#!/usr/bin/env bash

# This script demonstrates how a for loop can be used
# to process files in a directory.
#
# The * wildcard represents matching filesystem entries.
#
# Example:
#
# for file in *
#
# Bash expands * into the files/directories in
# the current directory.

echo "========== Files in Current Directory =========="

for file in *
do
    # Check whether the current item is a regular file.
    if [[ -f "$file" ]]; then
        echo "File: $file"
    fi
done

echo "==============================================="
