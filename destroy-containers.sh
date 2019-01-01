#!/bin/bash -e

# Running this script will stop the docker containers and remove it.
# Load Variables
source config.sh

docker container stop $(docker container ls -a -q --filter name=$OPENDAP_CONTAINER_NAME)
docker container stop $(docker container ls -a -q --filter name=$PHPLDAPADMIN_CONTAINER_NAME)

docker container rm $(docker container ls -a -q --filter name=$OPENDAP_CONTAINER_NAME)
docker container rm $(docker container ls -a -q --filter name=$PHPLDAPADMIN_CONTAINER_NAME)

