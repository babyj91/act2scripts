#!/bin/bash

# Prompt the user to enter their name
read -p "Enter your name: " name

# Get the current time and store it in a variable
current_hour=$(date +%H)

# Determine the appropriate greeting based on the time of day
if [ $current_hour -lt 12 ]; then
  echo "Good morning, $name!"
elif [ $current_hour -lt 17 ]; then
  echo "Good afternoon, $name!"
else
  echo "Good evening, $name!"
fi
