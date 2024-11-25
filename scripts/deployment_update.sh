#!/bin/bash
set -e

echo "Starting script with parameters" "$@"

export SOLUTION=${1}
export ENVIRONMENT=${2}
export ACCOUNT=${3}
export TERRAFORM_COMMAND=${5:-apply}

CONFIG_ROOT="../deployments/${SOLUTION}/${ENVIRONMENT}"
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
