#!/bin/bash

# Update all packages
####################
sudo yum update -y

# Install wget, unzip, and httpd
####################
sudo yum install wget unzip httpd -y 

# Start and enable httpd service
####################
sudo systemctl start httpd
sudo systemctl enable httpd

# Create a temporary directory for web files
####################
mkdir -p /tmp/webfiles
cd /tmp/webfiles || exit

# Download and unzip the website template
####################
wget https://www.tooplate.com/zip-templates/2127_little_fashion.zip
unzip 2127_little_fashion.zip

# Copy the website files to the Apache root directory
####################
sudo cp -r 2127_little_fashion/* /var/www/html/

# Restart the httpd service
####################
sudo systemctl restart httpd

# Clean up the temporary directory
####################
rm -rf /tmp/webfiles
sudo systemctl stop firewalld
