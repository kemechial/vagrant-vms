#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-21-jdk -y
#download the repository key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
#create repository file from where jenkins will be installed
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update #update again because we added repository!!!
sudo apt-get install jenkins -y