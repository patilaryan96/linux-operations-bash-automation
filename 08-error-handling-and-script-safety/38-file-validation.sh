#!/usr/bin/env bash

read -p "Enter the file name: " file

if [[ ! -e "$file" ]];then
	echo "File does not exist"
	exit 1
fi

if [[ ! -r "$file" ]];then
	echo "File is not readable"
	exit 1
fi

echo "File exists and is readable"

