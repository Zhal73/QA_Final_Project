#! /bin/bash

cd kubernetes
./stop.sh
cd ..

cd Terraform
terraform destroy -auto-approve
cd ..