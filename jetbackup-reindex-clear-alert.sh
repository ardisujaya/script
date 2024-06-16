#!/bin/bash

# Check if server and _id arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <server> <_id>"
    exit 1
fi

# Extract server and _id arguments
server=$1
_id=$2

# Define your sudo password here
sudo_password="yourStr0ngP4ss"

# Run SSH command with sudo and provide password from standard input
echo "$sudo_password" | ssh -o StrictHostKeyChecking=no -tt ksujaya@$server "sudo jetbackup5api -F reindexDestination -D '_id=$_id' | grep -E 'message:'"
echo "$sudo_password" | ssh -o StrictHostKeyChecking=no -tt ksujaya@$server "sudo jetbackup5api -F clearAlerts | grep -E 'message:'"
