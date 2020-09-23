#! /bin/bash

cd Terraform

terraform init

terraform plan

terraform apply -var="cluster-name=dev-cluster" -auto-approve

cd ..

aws eks --region eu-west-1 update-kubeconfig --name dev-cluster
