#!/bin/bash

# Creating index.html for Server Information
sudo echo "<html><body><p>Welcome to Web Server IP: $(ip addr show | awk '/inet / {print $2}' | cut -d'/' -f1), Name: $(hostname)</p></body></html>" | sudo tee /var/www/html/index.html

# Enable HTTPD
sudo systemctl enable httpd

# Start HTTPD
sudo systemctl start httpd

echo "Complete init1 commands successfully"
