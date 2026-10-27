#!/usr/bin/env bash

# Day 05 - Script 22
# Loop through elements of a Bash array

# Create an array of DevOps tools
tools=("Linux" "Git" "Docker" "AWS" "Terraform")

echo "===== DevOps Tools ====="

# Loop through each element of the array
for tool in "${tools[@]}"
do
    echo "Tool: $tool"
done

echo
echo "Total tools: ${#tools[@]}"
