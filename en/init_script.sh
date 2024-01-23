#!/bin/bash
sudo yum install wget -y
sudo wget https://github.com/scp-cloudacademy/ce-advanced/raw/main/09/web.sh
sudo chmod -R 755 ./
sudo ./web.sh
