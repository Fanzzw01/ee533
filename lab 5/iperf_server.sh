#!/bin/bash

# Define server port
PORT_n1 = 5001  # Change if needed
PORT_n2 = 5002
PORT_n3 = 5003
PORT_n4 = 5004

ROLE=$1

if [[ "$ROLE" == "1" ]]; then
    echo "Starting Iperf server on Node$ROLE on Port$PORT_n1..."
    iperf -s -p $PORT_n1

echo "Starting Iperf server on port $PORT..."
iperf -s -p $PORT  # Run in background

# Show the running process
echo "Iperf server started. Use 'pkill iperf' to stop it."
