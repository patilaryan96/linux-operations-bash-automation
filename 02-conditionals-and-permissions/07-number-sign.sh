#!/usr/bin/env bash

# This script checks whether a number is:
# 1. Positive
# 2. Negative
# 3. Zero
#
# A number greater than 0 is positive.
# A number less than 0 is negative.
# A number equal to 0 is neither positive nor negative.

read -p "Enter a number: " number

# Check if the number is greater than zero.
if (( number > 0 )); then
    echo "$number is POSITIVE"

# If the first condition is false, check if it is less than zero.
elif (( number < 0 )); then
    echo "$number is NEGATIVE"

# If both conditions are false, the number must be zero.
else
    echo "The number is ZERO"
fi
