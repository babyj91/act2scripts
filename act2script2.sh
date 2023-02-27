#!/bin/bash

# Prompt the user to enter their first and last name
read -p "Enter your first and last name: " name

# Prompt the user to enter their Student ID
read -p "Enter your Student ID: " id

# Check if the Student ID matches 1234
if [ "$id" == "1234" ]; then
  # If the Student ID matches 1234, print a welcome message
  echo "Welcome $name, welcome to your virtual machine!"
else
  # If the Student ID does not match 1234, print an error message
  echo "Error, invalid StudentID: $id. Please try again."
fi

