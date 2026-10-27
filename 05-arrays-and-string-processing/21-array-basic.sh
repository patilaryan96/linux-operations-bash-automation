#!/usr/bin/env bash

# Day 05 - Script 21
# Working with basic Bash arrays

# Create an array of DevOps tools
tools=("Linux" "Git" "Docker" "AWS" "Terraform")

echo "===== DevOps Tools ====="

# Display the complete array
echo "All tools: ${tools[@]}"

echo
echo "First tool: ${tools[0]}"
echo "Second tool: ${tools[1]}"
echo "Last tool: ${tools[4]}"

echo
echo "Total tools: ${#tools[@]}"
