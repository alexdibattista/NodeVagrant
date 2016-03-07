#!/usr/bin/env bash

locale-gen en_CA.UTF-8
apt-get update
apt-get install -y g++
curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get install -y git-core python-software-properties
apt-get install -y build-essential nodejs
su vagrant
mkdir /home/vagrant/node_modules
cd /var/www/ProjectName
ln -s /usr/bin/nodejs /usr/bin/node
npm -g install npm@latest
npm install -g forever
# needs to be installed globally to use watchify command
npm install -g watchify
npm install
