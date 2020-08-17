#!/bin/sh

sudo yum remove -y php*
sudo yum install -y amazon-linux-extras
sudo amazon-linux-extras enable 7.4
sudo yum install -y php php-mysqlnd

sudo systemctl restart httpd
