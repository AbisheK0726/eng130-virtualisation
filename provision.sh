#!/bin/bash
# CHECK FOR UPDATES AND UPGRADES
sudo apt-get update -y
sudo apt-get upgrade -y

# INSTALL AND START NGINX
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# INSTALL PYTHON
sudo apt-get install python -y
sudo apt-get install python-software-properties

# INSTALL NODEJS
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# INSTALL PM2
sudo npm install pm2 -g

# Cd into the app directory
cd /home/vagrant/app

# INSTALL NPM DEPENDENCIES
sudo npm install
