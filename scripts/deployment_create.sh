#!/bin/bash
set -e

# This script runs the bootstrap step (setup s3 bucket and dynamo-db table) and the update step
# It must only be used for new environments

SCRIPTS_DIR=$(pwd)

cd ${SCRIPTS_DIR}
. ./deployment_create_bootstrap.sh

cd ${SCRIPTS_DIR}
. ./deployment_update.sh
