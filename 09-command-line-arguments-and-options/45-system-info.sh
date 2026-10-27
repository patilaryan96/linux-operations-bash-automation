#!/usr/bin/env bash

# Day 09 - Script 45
# Simple system information CLI tool

show_info() {
    echo "========== System Information =========="
    echo "Hostname : $(hostname)"
    echo "User     : $(whoami)"
    echo "Kernel   : $(uname -r)"
    echo "Uptime   : $(uptime -p)"
}

show_help() {
    echo "Usage: $0 [option]"
    echo
    echo "Options:"
    echo "  -i    Show system information"
    echo "  -h    Show help"
}

while getopts "ih" opt; do
    case $opt in
        i)
            show_info
            ;;
        h)
            show_help
            ;;
        *)
            echo "Invalid option."
            show_help
            exit 1
            ;;
    esac
done
