#!/bin/bash

# Function for addition
add() {
  echo "scale=2; $1 + $2" | bc
}

# Function for subtraction
subtract() {
  echo "scale=2; $1 - $2" | bc
}

# Function for multiplication
multiply() {
  echo "scale=2; $1 * $2" | bc
}

# Function for division
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed"
  else
    echo "scale=2; $1 / $2" | bc
  fi
}

# Main program
echo "Simple Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Quit"

while true;
do
  read -p "Enter your choice (1-5): " choice
  case $choice in
    1)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$(add $num1 $num2)
      echo "Result: $result"
      ;;
    2)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$(subtract $num1 $num2)
      echo "Result: $result"
      ;;
    3)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$(multiply $num1 $num2)
      echo "Result: $result"
      ;;
    4)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$(divide $num1 $num2)
      echo "Result: $result"
      ;;
    5)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done
