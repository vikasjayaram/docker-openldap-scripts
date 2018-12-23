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
- Change mode to 755 for `.sh` files.
- $ chmod u+x *.sh
- Run `./init-docker-containers.sh` to create and install OpenLDAP and PhPLDAPAdmin containers.
- Once the command is run and successfully executed LDAP User and Password will be printed in the console.
- Goto `https://localhost:6443` to login into the LDAP administration dashboard.
- Run `./add-ldap-users.sh` to create the users from the `ldap-users` directory.
- Run `./stop-docker-containers.sh` to stop the running LDAP containers.
- Run `./start-docker-containers.sh` to start the LDAP containers.

### How to create LDAP users.

- Create a file `{filename}.ldif` in the `ldap-users` directory
- There is a sample in `ldap-users` directory.
- The password is `42`
- You can copy and change the following attruibutes to create a new user `CN, SN, UID etc`.
- Use the `slappasswd -s {password}` to generate the `userPassword`.
- Run `./add-ldap-users.sh` to create the users from the `ldap-users` directory.