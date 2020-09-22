#! /bin/bash

sudo apt-get update -y
sudo apt-get -y upgrade
sudo apt install -y curl
sudo apt install -y unzip wget
sudo apt install -y python3 python3-pip

# installs git
sudo apt-get install -y git

# installs terraform
wget https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip
unzip terraform_0.13.3_linux_amd64.zip
sudo mv terraform /usr/local/bin
rm terraform_0.13.3_linux_amd64.zip

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
