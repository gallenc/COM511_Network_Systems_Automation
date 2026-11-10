# ansible SemaphoreUI example

## SemaphoreUI

https://semaphoreui.com/

see https://docs.semaphoreui.com/administration-guide/installation/docker/

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
