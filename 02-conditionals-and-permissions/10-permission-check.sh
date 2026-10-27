#!/usr/bin/env bash

# This script checks the permissions of a file or directory.
#
# -r → Read permission
# -w → Write permission
# -x → Execute permission
#
# These checks are useful when troubleshooting
# Linux files, scripts, and server configurations.

read -p "Enter a file or directory path: " path

# First check whether the path exists.
if [[ ! -e "$path" ]]; then
    echo "Path does not exist."
    exit 1
fi

echo
echo "Permission information for: $path"
echo "--------------------------------"

# Check read permission.
if [[ -r "$path" ]]; then
    echo "Read      : YES"
else
    echo "Read      : NO"
fi

# Check write permission.
if [[ -w "$path" ]]; then
    echo "Write     : YES"
else
    echo "Write     : NO"
fi

# Check execute permission.
if [[ -x "$path" ]]; then
    echo "Execute   : YES"
else
    echo "Execute   : NO"
fi

echo "--------------------------------"

# ls -ld displays the actual Linux permission string.
echo "Linux permission string:"
ls -ld "$path"
