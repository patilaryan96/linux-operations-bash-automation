#!/usr/bin/env bash

# Script 26: Create and write to a file
# This script creates a text file and writes information into it.

FILE="sample.txt"

echo "Creating file: $FILE"

echo "Hello from Bash scripting!" > "$FILE"
echo "This file was created using a Bash script." >> "$FILE"
echo "Day 06 - File Handling" >> "$FILE"

echo
echo "File created successfully!"
echo "File contents:"
cat "$FILE"
