#!/bin/bash

# Check if server argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <server>"
    exit 1
fi

# Extract server argument
server=$1

# Define your sudo password here
sudo_password="Gog8?y4i{CQntXZZ+M'g"

# Run SSH command with sudo and provide password from standard input
echo "$sudo_password" | ssh -o StrictHostKeyChecking=no -tt ksujaya@$server 'sudo jetapps --remove jetbackup5-cpanel' 
echo "$sudo_password" | ssh -o StrictHostKeyChecking=no -tt ksujaya@$server 'sudo yum remove jetapps-repo -y' 
