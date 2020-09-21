#!/bin/sh
kubectl delete -f backend.yaml
kubectl delete -f frontend.yaml
kubectl delete -f loadBalancer.yaml
