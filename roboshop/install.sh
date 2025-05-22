#!/bin/bash

env=$1 
action=$2
if [ -z "$env" | -z "$action"]; then
  echo -e "\e[33m Usage: $0 <environment> <action> \e[0m"
  echo -e "bash $0 dev apply"
  exit 1
fi

terraform init  -backend-config=env-${env}/state.tfvars -var-file=env-${env}/main.tfvars; 
terraform plan -var-file=env-${env}/main.tfvars 
terraform ${action} -var-file=env-${env}/main.tfvars -auto-approve