#!/usr/bin/env bash

# Script 29: Search text in a file
# This script searches for a word or text inside a file.

FILE="sample.txt"
SEARCH="Bash"

echo "Searching for: $SEARCH"
echo "File: $FILE"
echo

if grep -q "$SEARCH" "$FILE"
then
    echo "Text found in the file!"
    echo
    echo "Matching lines:"
    grep -n "$SEARCH" "$FILE"
else
    echo "Text not found in the file."
fi

echo
echo "Search completed!"
