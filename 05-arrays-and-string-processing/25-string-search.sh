#!/usr/bin/env bash


# Day 05 - Script 25
# Searching for text inside a string

message="I am learning Bash scripting and DevOps."

read -p "Enter the text to search: " search

echo "===== String Search ====="

echo "Message: $message"
echo "Searching for: $search"

if [[ "$message" == *"$search"* ]]
then
    echo "Text found: $search"
else
    echo "Text not found: $search"
fi
