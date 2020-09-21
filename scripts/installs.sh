#! /bin/bash

sudo apt-get update -y
sudo apt-get -y upgrade
sudo apt install -y curl
sudo apt install -y unzip wget

# installs git
sudo apt-get install -y git

# installs terraform
wget https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip
unzip https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip
sudo mv terraform /usr/local/bin
rm https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip

# installs ansible
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
sudo chown -R $(whoami):$(whoami) ~/*
source ~/.bashrc

sudo pip3 install --user ansible

# installs java
sudo apt install -y default-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# installs maven
sudo apt install -y maven

# installs angular-cli
sudo apt install -y npm
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean
sudo npm install -g @angular/cli@latest
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

sudo npm install --save-dev @angular/cli@latest
sudo npm install -y

# installs Karma
sudo npm install karma

# installs Protractor
sudo npm install -g protractor
sudo webdriver-manager update