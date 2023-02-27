#!/bin/bash

# Prompt the user to enter their username
read -p "Enter your username: " username

# Display a welcome greeting message
echo "Hello, $username. Welcome to your Virtual Machine!"

# Redirect output to login.txt
echo "Hello, $username. Welcome to your Virtual Machine!" >> login.txt

