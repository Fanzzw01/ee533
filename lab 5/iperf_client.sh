#!/bin/bash

# Define server IP
SERVER_IP="$n0"  # Change to your server's IP
PORT=5001  # Change if needed
DURATION=30  # Duration of each test in seconds
NUM_CLIENTS=5  # Number of parallel clients

echo "Starting $NUM_CLIENTS clients to $SERVER_IP on port $PORT..."

# Run multiple clients in parallel
for i in $(seq 1 $NUM_CLIENTS); do
  echo "Starting client $i..."
  iperf -c $SERVER_IP -p $PORT -t $DURATION -P 1 &  # Run in background
done

echo "All clients started. Run 'pkill iperf' to stop them."