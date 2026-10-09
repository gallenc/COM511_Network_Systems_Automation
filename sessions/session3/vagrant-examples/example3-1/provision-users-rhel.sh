#!/bin/bash

set -x

# add admin with password minad1234   (note insecure password for ui login in vmware)

# only create admin user if doesn't exist (note inscecure password)
if getent passwd | grep -c '^admin:' > /dev/null ;
  then 
    echo "admin user already exists"; 
  else 
    echo creating admin user; 
    sudo useradd -m -s /bin/bash -U admin -u 1001 --groups wheel --password "$(mkpasswd minad1234)"
    sudo echo "%admin ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/admin
fi

# The graphical login managers do not show users with UID below 1000
# only create ansible user if doesn't exist (note insecure password - replace with ssh key)
if getent passwd | grep -c '^ansible:' > /dev/null ;
  then 
    echo "ansible user already exists"; 
  else 
    echo creating ansible user; 
    sudo useradd -m -s /bin/bash -U ansible -u 800 --groups wheel --password "$(mkpasswd minad1234)"
    sudo echo "%ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
fi
