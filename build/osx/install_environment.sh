#!/bin/bash

set -e
set -x

BASEURL=$1
ENVIRONMENT_NAME=$2
ENVIRONMENTS_PATH=$3

mkdir -p ${ENVIRONMENTS_PATH}
curl ${BASEURL}/${ENVIRONMENT_NAME}.tar.gz -o ${ENVIRONMENTS_PATH}/${ENVIRONMENT_NAME}.tar.gz
tar zxf ${ENVIRONMENTS_PATH}/${ENVIRONMENT_NAME}.tar.gz -C ${ENVIRONMENTS_PATH}
rm ${ENVIRONMENTS_PATH}/${ENVIRONMENT_NAME}.tar.gz
