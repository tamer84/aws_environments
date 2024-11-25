#!/bin/bash

# This script only runs the bootstrap step (setup s3 bucket and dynamo-db table)

set -e

echo "Starting script with parameters" "$@"

. ./deployment_functions.sh

export BUSINESSUNIT=${1}
export SOLUTION=${2}
export ENVIRONMENT=${3}
export ACCOUNT=${4}

validate_args
validate_aws_deployment_account

CONFIG_ROOT="../deployments/${BUSINESSUNIT}/${SOLUTION}/${ENVIRONMENT}"
CONFIG_PATH="${CONFIG_ROOT}/configuration"
TERRAFORM_OPTIONS="--auto-approve"

echo "BOOTSTRAP TERRAFORM..... - workspace ${ENVIRONMENT} on account ${CICD_ACCOUNT}"
cd ../_bootstrap_terraform
terraform init
terraform workspace select -or-create "${SOLUTION}-${ENVIRONMENT}"
terraform apply -var-file "${CONFIG_PATH}/bootstrap_terraform.tfvars" ${TERRAFORM_OPTIONS}
