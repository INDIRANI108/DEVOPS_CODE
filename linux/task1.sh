#!/bin/bash
# This script monitors CPU and memory usage

while :
do 
  # Get the current usage of CPU and memory
  cpuUsage=$(top -bn1 | awk '/Cpu/ { print $2}')
  memUsage=$(free -m | awk '/Mem/{print $3}')

  # Print the usage
  echo "CPU Usage: $cpuUsage%"
  echo "Memory Usage: $memUsage MB"
  sleep 1 
  # Sleep for 1 second
  done
