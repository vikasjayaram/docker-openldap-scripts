#!/bin/bash -e

# Load Variables
source config.sh

printf "\n$OPENDAP_CONTAINER_NAME starting.\n"

docker container start $(docker container ls -a -q --filter name=$OPENDAP_CONTAINER_NAME)

printf "\n$PHPLDAPADMIN_CONTAINER_NAME starting.\n"


docker container start $(docker container ls -a -q --filter name=$PHPLDAPADMIN_CONTAINER_NAME)

printf "\n$OPENDAP_CONTAINER_NAME started.\n"
printf "\n$PHPLDAPADMIN_CONTAINER_NAME started.\n"
printf "\n****List of Docker process running.****\n"
printf "\n"
docker ps
printf "\n"