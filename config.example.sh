#!/bin/bash -e

#Environment Variables
OPENDAP_CONTAINER_NAME="ldap-service"
PHP_CONTAINER_NAME="phpldapadmin-service"
LDAP_ORGANISATION="DSE Inc."
LDAP_DOMAIN="auth0dse.local"
LDAP_HOSTNAME="auth0dse.local"
LDAP_BASE_DN="dc=auth0dse,dc=local"
LDAP_USER="cn=admin,dc=auth0dse,dc=local"
PHPLDAPADMIN_CONTAINER_NAME="phpldapadmin-service"
PHPLDAPADMIN_HOSTNAMENAME="phpldapadmin.auth0dse.local"
# Add users config
LDAP_USER_DIR="./ldap-users"
CONTAINER_LDIF_PATH="/container/service/slapd/assets/test"
# LDAP DOCKER IMAGE
LDAP_DOCKER_IMAGE="osixia/openldap:1.3.0"
# PHP LDAP DOCKER IMAGE
PHP_LDAP_DOCKER_IMAGE="osixia/phpldapadmin:0.9.0"
