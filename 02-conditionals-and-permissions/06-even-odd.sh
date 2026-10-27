#!/usr/bin/env bash

# This script checks whether a number is even or odd.
#
# A number is EVEN if it is completely divisible by 2.
# A number is ODD if it leaves a remainder when divided by 2.
#
# % is the modulo operator.
# It returns the remainder of a division.
#
# Example:
# 10 % 2 = 0  -> Even
# 7 % 2 = 1   -> Odd


read -p "Enter a number: " number

if ((number % 2 == 0 ));then 
	echo "$number is Even"

else
	echo "$number is odd"
fi
