#!/usr/bin/env bash

# ==========================================
# Script 20: Function Based Menu
# ==========================================
# This script demonstrates how functions can
# be combined with a menu to perform different
# tasks.
#
# Concepts used:
# - Functions
# - User input
# - case statement
# - Command substitution
# ==========================================


echo "========== System Information Menu =========="


# Function to display hostname.
show_hostname() {
    echo "Hostname: $(hostname)"
}


# Function to display current user.
show_user() {
    echo "Current User: $(whoami)"
}


# Function to display system uptime.
show_uptime() {
    echo "System Uptime:"
    uptime
}


# Display menu.
echo "1. Show Hostname"
echo "2. Show Current User"
echo "3. Show System Uptime"
echo "4. Exit"

echo

# Ask the user to select an option.
read -p "Enter your choice: " choice


# Process the selected option.
case "$choice" in

    1)
        show_hostname
        ;;

    2)
        show_user
        ;;

    3)
        show_uptime
        ;;

    4)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid choice. Please select 1-4."
        ;;

esac


echo
echo "============================================="
