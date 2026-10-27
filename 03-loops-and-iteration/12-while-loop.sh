#!/usr/bin/env bash

# This script demonstrates a while loop.
#
# A while loop keeps running as long as
# its condition remains true.
#
# Syntax:
#
# while condition
# do
#     commands
# done
#
# Unlike a for loop, a while loop is useful when
# the number of repetitions depends on a condition.

echo "========== While Loop Example =========="

counter=1

# Continue while counter is less than or equal to 5.
while (( counter <= 5 ))
do
    echo "Counter: $counter"

    # Increase the counter by 1.
    (( counter++ ))
done

echo
echo "Loop finished."
echo "Final counter value: $counter"

echo "========================================="
