#!/bin/bash

# Define the generate_report function
function generate_report {
  # Get the current date and time
  current_date=$(date "+%Y-%m-%d %H:%M:%S")

  # Get the CPU usage percentage
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

  # Get the memory usage percentage
  mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

  # Get the disk usage percentage
  disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

  # Print the report header
  echo "====================="
  echo "System Usage Report"
  echo "Date and Time: $current_date"
  echo "====================="

  # Print the usage percentages
  echo "CPU usage: $cpu_usage%"
  echo "Memory usage: $mem_usage%"
  echo "Disk usage: $disk_usage%"

  # Print the report footer
  echo "====================="
}

# Call the generate_report function
generate_report

