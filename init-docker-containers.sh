#!/bin/bash -e

# Load Variables
source config.sh

# docker container stop $(docker container ls -a -q --filter name=$OPENDAP_CONTAINER_NAME)
# docker container stop $(docker container ls -a -q --filter name=$PHPLDAPADMIN_CONTAINER_NAME)

# docker container rm $(docker container ls -a -q --filter name=$OPENDAP_CONTAINER_NAME)
# docker container rm $(docker container ls -a -q --filter name=$PHPLDAPADMIN_CONTAINER_NAME)

# run your container
docker run  -p 389:389 -p 689:689 --name "$OPENDAP_CONTAINER_NAME" --hostname "$LDAP_HOSTNAME" \
--env LDAP_ORGANISATION="$LDAP_ORGANISATION" --env LDAP_DOMAIN="$LDAP_DOMAIN" --detach $LDAP_DOCKER_IMAGE

# run your container
docker run -p 6443:443 -p 8080:80 --name "$PHPLDAPADMIN_CONTAINER_NAME" \
--hostname "$PHPLDAPADMIN_HOSTNAMENAME" --link "$OPENDAP_CONTAINER_NAME":"$LDAP_HOSTNAME" \
--env PHPLDAPADMIN_LDAP_HOSTS="$LDAP_HOSTNAME" --detach $PHP_LDAP_DOCKER_IMAGE

docker exec "$OPENDAP_CONTAINER_NAME" ldapsearch -x -H ldap://localhost -b "$LDAP_BASE_DN" -D "$LDAP_USER" -w admin

PHPLDAP_IP=$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" $PHPLDAPADMIN_CONTAINER_NAME)

echo "Go to: https://$PHPLDAP_IP or https://localhost:6443"
echo "Login DN: $LDAP_USER"
echo "Password: admin"
