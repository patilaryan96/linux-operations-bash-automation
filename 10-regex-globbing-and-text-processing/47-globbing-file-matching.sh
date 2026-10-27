#!/usr/bin/env bash

echo "=== File Globbing ==="

mkdir -p logs

touch logs/app.log logs/error.log logs/server.txt logs/access.log

echo "All log files:"
printf '%s\n' logs/*.log

echo
echo "Error log:"
printf '%s\n' logs/error.*

echo
echo "Files starting with app:"
printf '%s\n' logs/app*

rm -rf logs
