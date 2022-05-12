#!/bin/bash
sudo apt-get update -y && 
sudo apt-get install -y \
apt-transport-https \
ca-certifications \
curl \
gnupg-agent \
software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo sudo apt-get install docker-ce docker-ce-cli conteinerd.io -y &&
sudo usermod -aG docker ubuntu 