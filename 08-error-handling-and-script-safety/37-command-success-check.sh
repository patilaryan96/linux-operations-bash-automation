#!/usr/bin/env bash

echo "Day 08 - Command Success Check"

ls /home/bash-scripting-30-days > /dev/null

if [ $? -eq 0 ]; then
    echo "Directory exists and command succeeded."
else
    echo "Directory does not exist or command failed."
fi
