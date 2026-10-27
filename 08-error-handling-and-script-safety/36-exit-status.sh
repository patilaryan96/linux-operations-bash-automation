#!/usr/bin/env bash

echo "Day 08 - Exit Status"

echo "Checking if the date command works..."

date

if [ $? -eq 0 ]; then
    echo "Command executed successfully."
else
    echo "Command failed."
fi
