#! /bin/bash

sudo groupadd -f docker
sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

sudo docker login
sudo docker-compose build
sudo docker push qajulyteam2/pet-clinic-client:latest
sudo docker push qajulyteam2/pet-clinic-rest:latest

cd kubernetes
./start.sh
cd ..
