#!/usr/bin/env bash

# Bash variables are not strongly typed by default.
# Their values are generally treated as strings.

name="Aryan"
age=21
course="DevOps"

echo "Name: $name"
echo "Age: $age"
echo "Course: $course"

# declare -p shows how Bash has declared the variable.
echo "----------------------"
echo "Variable information:"
declare -p name
declare -p age
declare -p course
# -- age="21" indicates variables are of type string/normal text by default unless explicitly declared


declare -i My_age=18
declare -p My_age
# -i My_age="18" indicates variable $My_age is an integer
