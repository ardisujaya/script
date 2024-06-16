#!/bin/bash

# Check if server argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <server>"
    exit 1
fi

# Extract server argument
server=$1

# Define your sudo password here
sudo_password="yourStr0ngP4ss"

# Run SSH command with sudo and provide password from standard input
echo "$sudo_password" | ssh -o StrictHostKeyChecking=no -tt ksujaya@$server 'sudo jetbackup5api backup -F listDestinations | grep -E "name: .*net|name: BB|name: b0|count:|_id:"' 
