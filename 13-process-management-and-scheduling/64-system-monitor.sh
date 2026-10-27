#!/usr/bin/env bash

echo "=================== SYSTEM MONITOR ==================="
echo "--- Disk Usage (df) ---"
df -h / | awk 'NR==1 || NR==2'

echo -e "\n--- Directory Usage (du - Top 3 items) ---"
du -sh ./* 2>/dev/null | sort -rh | head -n 3

echo -e "\n--- Top 3 CPU Consuming Processes (ps) ---"
ps aux --sort=-%cpu | awk 'NR<=4 {print $1, $2, $3, $11}'

echo -e "\n--- Memory Overview ---"
free -h 2>/dev/null || top -l 1 -s 0 | grep -i "physmem"
