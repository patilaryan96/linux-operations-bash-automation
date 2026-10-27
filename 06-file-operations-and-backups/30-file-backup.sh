#!/usr/bin/env bash
# Script 30: Create a file backup
# This script creates a backup copy of a text file.

FILE="sample.txt"
BACKUP="sample_backup.txt"

echo "Creating backup..."
echo "Source file: $FILE"
echo "Backup file: $BACKUP"
echo

if [ -f "$FILE" ]
then
    cp "$FILE" "$BACKUP"
    echo "Backup created successfully!"
    echo
    echo "Backup contents:"
    cat "$BACKUP"
else
    echo "File not found: $FILE"
fi

echo
echo "Backup process completed!"
