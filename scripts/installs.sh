#! /bin/bash

sudo apt-get update -y
sudo apt-get -y upgrade
sudo apt install curl

# installs git
sudo apt-get install -y git

#installs java
sudo apt install -y default-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

#installs maven
sudo apt install -y maven

#installs angular-cli
sudo apt install -y npm
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean
sudo npm install -g @angular/cli@latest
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

sudo npm install --save-dev @angular/cli@latest
sudo npm install -y

#installs Karma
sudo npm install karma

#installs Protractor
sudo npm install -g protractor
sudo webdriver-manager update