#!/usr/bin/env bash

# Day 05 - Script 23
# Working with string length and manipulation

name="Aryan Patil"

echo "===== String Information ====="

echo "Name: $name"
echo "Length: ${#name}"

echo
echo "First 5 characters: ${name:0:5}"
echo "Last 5 characters: ${name:6}"
