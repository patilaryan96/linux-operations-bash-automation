#!/usr/bin/env bash

# Script 28: Count lines, words and characters
# This script counts the lines, words and characters in a text file.

FILE="sample.txt"

echo "File: $FILE"
echo

echo "Number of lines: $(wc -l < "$FILE")"
echo "Number of words: $(wc -w < "$FILE")"
echo "Number of characters: $(wc -m < "$FILE")"

echo
echo "File counting completed!"
