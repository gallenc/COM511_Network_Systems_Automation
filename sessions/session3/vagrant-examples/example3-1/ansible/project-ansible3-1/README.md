# configure dnsmasq dhcp and dns sources

## dnsmasq example 

primarily taken from ansible by example
see https://www.ansiblebyexample.com/articles/ansible-dnsmasq-dhcp-dns-network-services


## running

```
#you may need to change the known_hosts keys
rm ~/.ssh/known_hosts

```

```
vagrant ssh ansible_controller

sudo su ansible

cd /vagrant/ansible/project-ansible3-1/

ansible-playbook -i inventory/dev/hosts.ini  setup-dnsmasq-server.yml

```

In our example, we want to issue ip addresses to known MAC addresses using static address assignment.












