#!/usr/bin/env bash

# Day 05 - Script 24
# Comparing strings in Bash

username="Aryan"
read -p "Enter the username: " entered_name

echo "===== String Comparison ====="

echo "Stored name: $username"
echo "Entered name: $entered_name"

if [ "$username" = "$entered_name" ]
then
    echo "Names match."
else
    echo "Names do not match."
fi
