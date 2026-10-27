#!/usr/bin/env bash

# Bash supports arithmetic operations using (( )).
# Variables used in arithmetic do not need the $ symbol inside (( )).

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo
echo "========== Calculator =========="

# Basic arithmetic operations
sum=$((num1 + num2))
difference=$((num1 - num2))
product=$((num1 * num2))

echo "Addition       : $sum"
echo "Subtraction    : $difference"
echo "Multiplication : $product"

# Bash performs integer division by default.
if (( num2 != 0 )); then
    division=$((num1 / num2))
    remainder=$((num1 % num2))

    echo "Division       : $division"
    echo "Remainder      : $remainder"
else
    echo "Division       : Cannot divide by zero"
    echo "Remainder      : Cannot divide by zero"
fi

echo "================================"

# Arithmetic expressions can also be evaluated directly.
echo
echo "Expression test:"
echo "$num1 + $num2 = $((num1 + num2))"

# Bash arithmetic normally works with integers.
# Decimal/floating-point calculations require tools such as 'bc'.
