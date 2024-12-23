#!/bin/bash
set -e

echo "Starting script with parameters" "$@"

export SOLUTION=${1}
export ENVIRONMENT=${2}
export ACCOUNT=${3}

CONFIG_ROOT="../deployments/${SOLUTION}/${ENVIRONMENT}"
CONFIG_PATH="${CONFIG_ROOT}/configuration"
BACKEND_CONFIG_FILE="${CONFIG_ROOT}/backend/backend.hcl"

cd ../infra_resources
terraform init -backend-config=${BACKEND_CONFIG_FILE} -reconfigure || terraform init -backend-config=${BACKEND_CONFIG_FILE}
terraform workspace select -or-create ${ENVIRONMENT}
terraform destroy -var-file ${CONFIG_PATH}/infra_resources.tfvars --auto-approve