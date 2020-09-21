#!/bin/sh
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl apply -f loadBalancer.yaml
