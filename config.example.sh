#!/bin/bash -e

#Environment Variables
OPENDAP_CONTAINER_NAME="ldap-service"
PHP_CONTAINER_NAME="phpldapadmin-service"
LDAP_ORGANISATION="Example Inc."
LDAP_DOMAIN="example.org"
LDAP_HOSTNAME="ldap.example.org"
LDAP_BASE_DN="dc=example,dc=org"
LDAP_USER="cn=admin,dc=example,dc=org"
PHPLDAPADMIN_CONTAINER_NAME="phpldapadmin-service"
PHPLDAPADMIN_HOSTNAMENAME="phpldapadmin.example.org"
# Add users config
LDAP_USER_DIR="./ldap-users"
CONTAINER_LDIF_PATH="/container/service/slapd/assets/test"
# LDAP DOCKER IMAGE
LDAP_DOCKER_IMAGE="osixia/openldap:1.2.2"
# PHP LDAP DOCKER IMAGE
PHP_LDAP_DOCKER_IMAGE="osixia/phpldapadmin:0.7.2"