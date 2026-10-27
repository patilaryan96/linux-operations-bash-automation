#!/usr/bin/env bash

# This script creates a countdown using a while loop.
#
# It demonstrates:
# - User input
# - while loops
# - Arithmetic
# - Conditional validation
# - The sleep command

read -p "Enter countdown starting number: " number

# Make sure the input is a positive number.
if (( number <= 0 )); then
    echo "Please enter a number greater than 0."
    exit 1
fi

echo
echo "Starting countdown..."

while (( number > 0 ))
do
    echo "$number"
    
    # Wait for one second before the next number.
    sleep 1

    # Decrease the number by 1.
    (( number-- ))
done

echo "🚀 Countdown complete!"
