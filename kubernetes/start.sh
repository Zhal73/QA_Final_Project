#!/bin/sh
sed 's/{{dburi}}/${DB_URI}/g;s/{{dbpassword}}/${DB_PASSWORD}/g' secret.yaml | kubectl apply -f -
kubectl apply -f config-map.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl apply -f nginx.yaml
