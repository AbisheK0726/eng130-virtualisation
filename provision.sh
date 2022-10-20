#!/bin/bash

echo -e "Provisioning \e[32m[STARTED]\033[0m" 

# CHECK FOR UPDATES AND UPGRADES
sudo apt-get update -y
sudo apt-get upgrade -y

# INSTALL PYTHON
sudo apt-get install python -y
sudo apt-get install python-software-properties

# INSTALL AND START NGINX
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# INSTALL NODEJS
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# INSTALL PM2
sudo npm install pm2 -g

# CONFIGURE NGINX
sudo cp -f /home/vagrant/environment/default /etc/nginx/sites-available/default 

# Green Color for Success
echo -e "Default file copied and Pasted Successfully \e[32m[DONE]\033[0m" 

# RESTART NGINX
sudo systemctl restart nginx

# Cd into the app directory
cd /home/vagrant/app

# INSTALL NPM DEPENDENCIES
sudo npm install

echo -e " TASK: \e[32m[PROVISIONING COMPLETE]\033[0m"

