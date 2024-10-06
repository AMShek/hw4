#!/bin/bash

# Find the process ID (PID) of the infinite.sh script
pid=$(pgrep -f "bash infinite.sh")

# Check if the PID was found
if [ -n "$pid" ]; then
    # Kill the process
    kill $pid
    echo "Process infinite.sh with PID $pid has been killed."
else
    echo "No running process found for infinite.sh."
fi
