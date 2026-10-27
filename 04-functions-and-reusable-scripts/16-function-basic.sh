#!/usr/bin/env bash

# ==========================================
# Script 16: Basic Bash Function
# ==========================================
# This script demonstrates how to create
# and call a basic function in Bash.
#
# A function is a reusable block of commands.
#
# Syntax:
#
# function_name() {
#     commands
# }
#
# The function can then be called using:
#
# function_name
# ==========================================


echo "========== Bash Function Example =========="


# Create a simple function.
hello_user() {
    echo "Hello from a Bash function!"
    echo "Functions help us reuse commands."
}


# Call the function.
hello_user


echo
echo "Function execution completed."
echo "==========================================="
