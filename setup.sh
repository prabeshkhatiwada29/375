#!/bin/bash


echo "updating package lists..."
sudo apt-get update -y
echo "upgrading installed packages..."
sudo apt-get upgrade -y
echo "installing required packages..."
sudo apt-get install -y build-essential curl git vim

echo"install nginx..."
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

echo"install mysql server..."
sudo apt-get install -y mysql-server
sudo systemctl enable mysql
sudo systemctl start mysql


sudo apt-get install -y python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install virtualenv
echo "Setup completed!"
echo'Your Ubuntu Vagrant box is ready to use.
'
	
