#!/bin/bash
set -e

# This script runs terraform plan

echo "Starting script with parameters" "$@"

. ./deployment_update.sh "${1}" "${2}" "${3}" "${4}" "plan"
