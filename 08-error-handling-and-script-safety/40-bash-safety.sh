#!/usr/bin/env bash

# Script: 40-bash-safety.sh
# Purpose: Demonstrate Bash safety options
# Day: 08

set -e
set -u
set -o pipefail

echo "================================"
echo "       Bash Safety Demo"
echo "================================"

echo
echo "1. set -e"
echo "Script stops when a command fails."

echo
echo "2. set -u"
echo "Script detects unset variables."

echo
echo "3. pipefail"
echo "Pipeline fails if any command in the pipeline fails."

echo
echo "Running a successful command..."
date

echo
echo "All commands completed successfully."

exit 0
