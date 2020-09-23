#! /bin/bash

cd Terraform

terraform init

terraform plan

terraform apply -auto-approve

cd ..

aws eks --region eu-west-1 update-kubeconfig --name basic-cluster
