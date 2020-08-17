#!/bin/bash

sudo yum update -y
sudo yum install -y httpd

cd /var/www/html/
sudo wget https://wordpress.org/latest.zip
sudo unzip latest.zip 
sudo mv wordpress/* .
sudo rm -f latest.zip 
sudo rmdir wordpress/

sudo systemctl enable httpd
sudo systemctl start httpd
