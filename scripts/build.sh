#! /bin/bash

sudo groupadd -f docker
sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

sudo docker login
sudo docker-compose build
sudo docker push qajulyteam2/spring-petclinic-angular:latest
sudo docker push qajulyteam2/spring-petclinic-rest:latest

cd kubernetes
./start.sh
cd ..
