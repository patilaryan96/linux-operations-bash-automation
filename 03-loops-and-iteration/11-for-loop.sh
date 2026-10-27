#!/usr/bin/env bash

# This script demonstrates a basic Bash for loop.
#
# A for loop repeats a set of commands for each item
# in a given list.
#
# Syntax:
#
# for variable in list
# do
#     commands
# done
#
# The variable temporarily stores the current item
# during each iteration.

echo "========== For Loop Example =========="

# Loop through a list of numbers.
for number in 1 2 3 4 5
do
    echo "Number: $number"
done

echo
echo "---------- Another Example ----------"

# A loop can also work with words.
for language in Bash Python Java
do
    echo "Language: $language"
done

echo
echo "---------- Range Example ----------"

# Bash can generate a sequence using {start..end}.
for number in {1..5}
do
    echo "Iteration $number"
done

echo "======================================"
