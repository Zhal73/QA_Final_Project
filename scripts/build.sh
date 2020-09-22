#! /bin/bash

sudo groupadd -f docker
sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

docker login
docker-compose build
docker push qajulyteam2/spring-petclinic-angular:latest
docker push qajulyteam2/spring-petclinic-rest:latest
docker stack deploy --compose-file docker-compose.yaml petclinic
