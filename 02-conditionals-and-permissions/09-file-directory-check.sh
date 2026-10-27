#!/usr/bin/env bash

# This script checks whether a given path exists.
# It also determines whether the path is:
# - A regular file
# - A directory
#
# These checks are very useful in Linux automation scripts.
#
# -e → path exists
# -f → path is a regular file
# -d → path is a directory

read -p "Enter a file or directory path: " path

echo

# First check whether the path exists.
if [[ -e "$path" ]]; then

    # Check whether the path is a regular file.
    if [[ -f "$path" ]]; then
        echo "Path exists."
        echo "Type: Regular file"

    # Check whether the path is a directory.
    elif [[ -d "$path" ]]; then
        echo "Path exists."
        echo "Type: Directory"

    else
        echo "Path exists, but it is another type of filesystem object."
    fi

else
    echo "Path does not exist."
fi
