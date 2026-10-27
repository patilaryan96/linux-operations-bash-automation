#!/usr/bin/env bash

# Day 09 - Script 44
# Demonstrates command-line options using getopts

name=""
role=""

while getopts "n:r:" opt; do
    case $opt in
        n)
            name="$OPTARG"
            ;;
        r)
            role="$OPTARG"
            ;;
        *)
            echo "Usage: $0 -n <name> -r <role>"
            exit 1
            ;;
    esac
done

echo "========== User Details =========="
echo "Name : $name"
echo "Role : $role"
