#!/bin/bash

# Function to Calculate Factorial using a Loop
factorial() {
    num=$1  # Assign the input number to 'num'
    fact=1  # Initialize factorial result to 1

    while [ $num -gt 0 ]
    do
        fact=$((fact * num))
        num=$((num - 1))
    done

    echo $fact
}

# Prompt the user to enter a number
echo "Enter a number: "
read number

if [ $number -lt 0 ]; then
    echo "Factorial of a negative number is undefined."
else
    result=$(factorial $number)  # Call the factorial function and store the result
    echo "The factorial of $number is: $result"  # Print the result
fi