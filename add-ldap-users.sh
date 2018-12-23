#!/bin/bash -e

# Load Variables
source config.sh

for file in "$LDAP_USER_DIR"/*
do
  echo "$file"
  docker cp $file $OPENDAP_CONTAINER_NAME:$CONTAINER_LDIF_PATH
done


LDAP_CID=$(docker ps -aq --filter name=$OPENDAP_CONTAINER_NAME)

echo "LDAP_CID $LDAP_CID"

for file in "$LDAP_USER_DIR"/*
do
  echo "$(basename "$file")"
  docker exec $LDAP_CID ldapadd -x -D $LDAP_USER -w admin -f $CONTAINER_LDIF_PATH/"$(basename "$file")"
done

docker exec "$OPENDAP_CONTAINER_NAME" ldapsearch -x -H ldap://localhost -b "$LDAP_BASE_DN" -D "$LDAP_USER" -w admin
