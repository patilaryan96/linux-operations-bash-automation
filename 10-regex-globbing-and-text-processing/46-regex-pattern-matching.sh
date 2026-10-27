#!/usr/bin/env bash

echo "=== Regex Pattern Matching ==="

read -p "Enter an email address: " email

if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "Valid email address"
else
    echo "Invalid email address"
fi

read -p "Enter a server name: " server

if [[ "$server" =~ ^server-[0-9]+$ ]]; then
    echo "Valid server name"
else
    echo "Invalid server name"
fi
