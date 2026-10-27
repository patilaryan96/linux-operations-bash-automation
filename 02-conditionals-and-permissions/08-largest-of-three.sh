#!/usr/bin/env bash

read -p "Enter 1st number: " num1
read -p "Enter 2nd number: " num2
read -p "Enter 3rd number: " num3

if ((num1 >= num2 && num1 >= num3));then 

	echo "$num1 is the largest"
elif ((num2 >= num1 && num2 >= num3));then

	echo "$num2 is the largest"
else
	echo "$num3 is the largest"
fi

echo
echo "ENTERED NUMBERS WERE"

echo "1st number $num1"
echo "2nd number $num2"
echo "3rd number $num3"
	

