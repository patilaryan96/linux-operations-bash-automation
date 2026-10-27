#!/usr/bin/env bash

# Day 09 - Script 42
# Validates required command-line arguments

if [ $# -eq 0 ]; then
    echo "Error: No argument provided."
    echo "Usage: $0 <name>"
    exit 1
fi

echo "Hello, $1!"
	echo "Argument received successfully."
