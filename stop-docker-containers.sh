#!/bin/bash -e

# Load Variables
source config.sh

printf "\n$OPENDAP_CONTAINER_NAME stopping.\n"

docker container stop $(docker container ls -a -q --filter name=$OPENDAP_CONTAINER_NAME)

printf "\n$PHPLDAPADMIN_CONTAINER_NAME stopping.\n"

docker container stop $(docker container ls -a -q --filter name=$PHPLDAPADMIN_CONTAINER_NAME)

printf "\n$OPENDAP_CONTAINER_NAME stopped.\n"
printf "\n$PHPLDAPADMIN_CONTAINER_NAME stopped.\n"
printf "\n****List of Docker process running.****\n"
printf "\n"
docker ps
printf "\n"