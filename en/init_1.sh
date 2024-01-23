#!/bin/bash

# Update the package manager and install yum-utils
sudo yum install yum-utils -y

# Install httpd service
sudo yum install httpd -y

# Overwrite index.html
sudo echo "<html><body><p>Welcome to Web Server IP: $(ip addr show | awk '/inet / {print $2}' | cut -d'/' -f1), Name: $(hostname)</p></body></html>" | sudo tee /var/www/html/index.html

# echo "Complete init1 commands successfully"
