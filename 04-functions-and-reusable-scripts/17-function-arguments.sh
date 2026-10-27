#!/usr/bin/env bash

# ==========================================
# Script 17: Bash Function Arguments
# ==========================================
# This script demonstrates how to pass
# arguments to a Bash function.
#
# Arguments are received inside the function
# using positional parameters such as:
#
# $1 -> first argument
# $2 -> second argument
#
# Functions make scripts more reusable.
# ==========================================


echo "========== Function Arguments Example =========="


# Create a function that accepts two arguments.
greet_user() {

    # Store the first argument in a variable.
    name="$1"

    # Store the second argument in a variable.
    course="$2"

    echo "Hello, $name!"
    echo "You are learning $course."
}


# Call the function and pass two arguments.
greet_user "Aryan" "DevOps"


echo
echo "Function execution completed."
echo "==============================================="
