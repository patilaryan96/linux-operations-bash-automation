#!/usr/bin/env bash

# Script 27: Read a file line by line
# This script reads and displays each line from a text file.

FILE="sample.txt"

echo "Reading file: $FILE"
echo

while IFS= read -r line
do
    echo "$line"
done < "$FILE"

echo
echo "File reading completed!"
