# Run OpenLDAP PhpLDAPAdmin in Docker

The following steps will install the OpenLDAP and a PhpLDAPAdmin for administration for performing CRUD operations on your LDAP Organisation in Docker containers which can be spinned up and down to your necessity.

### Prerequisites

- Install Docker from https://www.docker.com/get-started
- If you do not have a docker account, Sign up for a account, it is FREE.
- Once you have downloaded and installed, Open the terminal.
- Run docker login , You will need to enter the Docker ID / Password and not your email. You can find this information when you login to the Docker website when you signup. 
- We are good to go onto the next steps.

### Quick Start

- Clone the repository.

```
git clone https://github.com/vikasjayaram/docker-openldap-scripts.git
```

- $ cd docker-openldap-scripts
- Follow the below command to make the files executable.
- $ chmod u+x init-docker-containers.sh
- $ chmod u+x add-ldap-users.sh
- Run `./init-docker-containers.sh` to create and install OpenLDAP and PhPLDAPAdmin containers.
- Once the command is run and successfully executed LDAP User and Password will be printed in the console.
- Goto `https://localhost:6443` to login into the LDAP administration dashboard.
- Run `./add-ldap-users.sh` to create the users from the `ldap-users` directory.

### How to create LDAP users.

- Create a file `{filename}.ldif` in the `ldap-users` directory
- 