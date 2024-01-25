#!/bin/bash

# Update the package manager and install yum-utils
sudo yum install yum-utils -y

# Install httpd service
sudo yum install httpd -y

# Enable HTTPD
sudo systemctl enable httpd

# Start HTTPD
sudo systemctl start httpd

echo "Complete init1 commands successfully"
