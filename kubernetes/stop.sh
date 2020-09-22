#!/bin/sh
kubectl delete -f config-map.yaml
kubectl delete -f backend.yaml
kubectl delete -f frontend.yaml
kubectl delete -f nginx.yaml


