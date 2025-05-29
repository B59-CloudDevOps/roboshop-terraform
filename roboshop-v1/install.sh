#!/bin/bash

env=$1 
action=$2
token=$3
# Check if either 'env' or 'action' is empty
if [ -z "$env" ] || [ -z "$action" ] || [ -z "$token" ]; then
  echo -e "\e[33m Usage: $0 <environment> <action> <token>\e[0m"
  echo -e "Example: bash $0 dev apply token"
  exit 1
fi

terraform init  -backend-config=env-${env}/state.tfvars -var-file=env-${env}/main.tfvars -var token=${token}; 
terraform plan -var-file=env-${env}/main.tfvars -var token=${token};
terraform ${action} -var-file=env-${env}/main.tfvars -var token=${token} -auto-approve