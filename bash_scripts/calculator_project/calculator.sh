#!/bin/bash

# Initialize variables
declare -i number1
declare -i number2
declare -i total

# Display a welcome message
echo ""
echo "===================================="
echo "     Welcome to Advanced Calculator"
echo "===================================="
echo ""

# Display menu options
echo "Choose an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1/2/3/4): " operation

# Prompt user to enter numbers
echo ""
read -p "Please enter the first number: " number1
read -p "Please enter the second number: " number2

# Get the current date and time
current_time=$(date "+%Y-%m-%d %H:%M:%S")

# Perform the operation based on user choice
case $operation in
    1)
        total=$((number1 + number2))
        operation_symbol="+"
        echo "The sum of $number1 and $number2 is: $total"
        ;;
    2)
        total=$((number1 - number2))
        operation_symbol="-"
        echo "The difference between $number1 and $number2 is: $total"
        ;;
    3)
        total=$((number1 * number2))
        operation_symbol="*"
        echo "The product of $number1 and $number2 is: $total"
        ;;
    4)
        if [ $number2 -ne 0 ]; then
            total=$((number1 / number2))
            operation_symbol="/"
            echo "The division of $number1 by $number2 gives: $total"
        else
            echo "Error: Division by zero is not allowed."
            exit 1
        fi
        ;;
    *)
        echo "Invalid choice!"
        exit 1
        ;;
esac

# Log the operation to a file
echo "$current_time - $number1 $operation_symbol $number2 = $total" >> operations.log

# Display completion message
echo ""
echo "Operation completed successfully on: $current_time"
echo "Logged operation to 'operations.log'."

# Exit the script
exit 0
