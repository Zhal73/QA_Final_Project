#!/bin/sh
sed 's/{{DB_URI}}/${DB_URI}/g;s/{{DB_PASSWORD}}/${DB_PASSWORD}/g' secret.yaml | kubectl apply -f -
kubectl apply -f config-map.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl apply -f nginx.yaml
