#!/bin/bash

# delete index.html
sudo rm /var/html/index.html

# Creating index.html for Server Information
sudo echo "<html><body><p style="font-size:30px">Welcome to Web Server $(hostname), IP: $(ip addr show | awk '/inet / {print $2}' | cut -d'/' -f1)</p></body></html>" | sudo tee /var/www/html/index.html

# Start HTTPD
sudo systemctl restart httpd

# Install Stress
sudo yum -y install epel-release
sudo yum -y install stress

echo "Complete init2 commands successfully"
