#!/bin/bash

# This script updates a new or existing environment (runs terraform apply)
# Per default it runs terraform apply with --auto-approve
# If you want to run 'plan' pass 'plan' as a 5th parameter

set -e

echo "Starting script with parameters" "$@"

. ./deployment_functions.sh

export BUSINESSUNIT=${1}
export SOLUTION=${2}
export ENVIRONMENT=${3}
export ACCOUNT=${4}
export TERRAFORM_COMMAND=${5:-apply}

validate_args
validate_aws_deployment_account

CONFIG_ROOT="../deployments/${BUSINESSUNIT}/${SOLUTION}/${ENVIRONMENT}"
CONFIG_PATH="${CONFIG_ROOT}/configuration"
BACKEND_CONFIG_FILE="${CONFIG_ROOT}/backend/backend.hcl"
if [ "${TERRAFORM_COMMAND}" == "apply" ]; then
  TERRAFORM_OPTIONS="--auto-approve"
fi

terraform_apply () {
  RESOURCE=$1
  echo "++++${RESOURCE} ${TERRAFORM_COMMAND}..... - workspace ${ENVIRONMENT} on account ${ACCOUNT}"
  cd ../${RESOURCE}
  terraform init -backend-config=${BACKEND_CONFIG_FILE} -reconfigure || terraform init -backend-config=${BACKEND_CONFIG_FILE}
  terraform workspace select -or-create ${ENVIRONMENT}
  terraform ${TERRAFORM_COMMAND} -var-file ${CONFIG_PATH}/${RESOURCE}.tfvars ${TERRAFORM_OPTIONS}
  echo "++++${RESOURCE} DONE"
}

echo "ENVIRONMENT ${TERRAFORM_COMMAND}....." - workspace ${ENVIRONMENT} on account ${ACCOUNT}

# INFRA RESOURCES
terraform_apply infra_resources
