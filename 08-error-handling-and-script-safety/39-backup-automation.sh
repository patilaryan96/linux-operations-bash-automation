#!/usr/bin/env bash

# Script: 39-file-backup.sh
# Purpose: Create a compressed backup of an existing file
# Day: 08

echo "================================"
echo "       File Backup Script"
echo "================================"

read -p "Enter the file to backup: " file

# Check if file exists
if [[ ! -e "$file" ]]; then
    echo "Error: File does not exist."
    exit 1
fi

# Check if it is actually a file
if [[ ! -f "$file" ]]; then
    echo "Error: $file is not a regular file."
    exit 1
fi

# Create backup directory
mkdir -p backup

# Create compressed backup
if tar -czf "backup/$(basename "$file").tar.gz" "$file"; then
    echo "Backup created successfully."
    echo "Backup location: backup/$(basename "$file").tar.gz"
else
    echo "Error: Backup creation failed."
    exit 1
fi

exit 0
