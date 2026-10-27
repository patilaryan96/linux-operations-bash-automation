#!/usr/bin/env bash

# Day 09 - Script 43
# Processes multiple command-line arguments

if [ $# -eq 0 ]; then
    echo "Usage: $0 <name1> <name2> ..."
    exit 1
fi

echo "Processing arguments:"

while [ $# -gt 0 ]; do
    echo "Argument: $1"
    shift
done

echo "All arguments processed."
