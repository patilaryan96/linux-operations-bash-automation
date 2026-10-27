#!/usr/bin/env bash

echo "Day 07 - Output Redirection"

echo "This line is written to a file." > output.txt
echo "This line is appended to the file." >> output.txt

echo "Output has been redirected to output.txt"

echo "Contents of output.txt:"
cat output.txt
