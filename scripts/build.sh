#! /bin/bash

sudo groupadd -f docker
sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

echo $DB_PASSWORD
echo $DB_URI

docker login
docker-compose build
docker push qajulyteam2/pet-clinic-client:latest
docker push qajulyteam2/pet-clinic-rest:latest

cd kubernetes
./start.sh
cd ..
