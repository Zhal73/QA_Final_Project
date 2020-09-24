#!/bin/sh
sed 's/{{db_uri}}/${dburi}/g;s/{{db_password}}/${dbpassword}/g' secret.yaml | kubectl apply -f -
kubectl apply -f config-map.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl apply -f nginx.yaml
