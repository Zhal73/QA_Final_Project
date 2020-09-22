#! /bin/bash

sudo groupadd -f docker
sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

export DB_PASSWORD="petclinic"
echo $DB_PASSWORD
export DB_URI="jdbc:mysql://34.89.75.156:3306/petclinic?useUnicode=true"
echo $DB_URI

sudo docker login
sudo docker-compose build
sudo docker push qajulyteam2/pet-clinic-client:latest
sudo docker push qajulyteam2/pet-clinic-rest:latest

cd kubernetes
./start.sh
cd ..
