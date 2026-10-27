#!/usr/bin/env bash
echo "Day 07 - Input Redirection"

echo "Aryan" > names.txt
echo "Rahul" >> names.txt
echo "Rohit" >> names.txt

echo "Reading names using input redirection:"

while read name
do
    echo "Name: $name"
done < names.txt
