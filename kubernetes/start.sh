#!/bin/sh

kubectl apply -f config-map.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl apply -f nginx.yaml
