#!/bin/bash
set -e

echo "Starting script with parameters" "$@"

export SOLUTION=${1}
export ENVIRONMENT=${2}
export ACCOUNT=${3}

CONFIG_ROOT="../deployments/${SOLUTION}/${ENVIRONMENT}"
CONFIG_PATH="${CONFIG_ROOT}/configuration"

echo "BOOTSTRAP TERRAFORM..... - workspace ${ENVIRONMENT} on account ${CICD_ACCOUNT}"
cd ../_bootstrap_terraform
terraform init
terraform workspace select -or-create "${ENVIRONMENT}"
terraform apply -var-file "${CONFIG_PATH}/bootstrap_terraform.tfvars" --auto-approve
