#! /bin/bash

sudo groupadd -f docker
sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

docker login
docker-compose build
docker push ngww/spring-petclinic-angular:latest
docker push ngww/spring-petclinic-rest:latest
docker stack deploy --compose-file docker-compose.yaml petclinic