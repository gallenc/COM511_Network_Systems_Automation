# ansible SemaphoreUI example

We will be using a [Dockerised version of SemaphoreUI]( https://docs.semaphoreui.com/administration-guide/installation/docker/).

The [docker-compose](./docker-compose.yml) file defines the semaphore UI system and two test containers.

[Systemd](https://systemd.io/) is a software suite for system and service management on Linux built to unify service configuration and behaviour across Linux distributions.
It is used to control the startup of multiple services in a full linux vm. 

Normally docker containers only run one service and do not have `systemd` installed. 
However in this example we are using two pre-defined containers which do have `systemd`and `sshd` installed.
This provides a useful test bed for our ansible scripts because it means we can install and start services in the conteiners in same way we would with a full operating system. 

One of the containers is based on Alma linux (Another fork of Red Hat like Centos or Rocky) and the other container is based upon Ubuntu.

A script, `generate-ansible-user-ssh.sh` is used to create Ansible users in each of the containers and a single set of Ansible authentication keys which are shared through the `ssh-keys` volume.

[Docker Compose Secrets](https://docs.docker.com/compose/how-tos/use-secrets/) are used to inject passwords and passphrases into the Semaphore container. 

Unfortunately secrets don't appear to be injected correctly into the `Systemd` containers, and so we simply define the passphrases and passwords in these using environment variables.

[ssh-add](https://linux.die.net/man/1/ssh-add) is a utility to unlock an SSH key using a passphrase once and hold the key in memory. 
In one set of examples, the ansible script uses this utility to access the ansible keys and use them to connect to the remote systems.

## Running example

you need to copy `.secrets-examples` to `.secrets` so that the scripts have access to the `ansible_root_password.txt` and the `ansible_ssh_passphrase.txt`

When copying anything in this example, it is VERY important that you don't introduce DOS CR/LF line endings as this will cause the bash scripts to fail. 

You can check and change file line endings on windows using `nano` to edit the files in `git bash`.

Run the example using

```
cd ansible-sempahore-example

docker compose up -d

```

( you may need to do `docker compose build` first)

The Ansible Semaphore UI is at [http://localhost:3000](http://localhost:3000)

SEMAPHORE_ADMIN_NAME: admin

SEMAPHORE_ADMIN_PASSWORD: changeme 

Once you are in the UI, you can run the ansible scripts.
