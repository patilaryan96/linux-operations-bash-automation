#!/usr/bin/env bash

# This script reads Linux user information from /etc/passwd.
#
# /etc/passwd contains information about local user accounts.
#
# Each line generally follows this format:
#
# username:x:UID:GID:comment:home:shell
#
# The cut command extracts the username from each line.
#
# -d ':' → use : as the delimiter
# -f 1   → select the first field

echo "========== Linux Users =========="

echo "Users configured on this system:"
echo

# Read every line from /etc/passwd.
while IFS= read -r line
do
    # Extract the username (first field).
    username=$(echo "$line" | cut -d ':' -f 1)

    echo "$username"

done < /etc/passwd

echo
echo "================================="
echo "Total user entries: $(wc -l < /etc/passwd)"
