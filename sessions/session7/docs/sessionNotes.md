[Main Menu](../../../sessions/README.md) |[session7](../../session7/) | [Session 7 Notes](../docs/sessionNotes.md)

# Session 7 Notes

In session 6 we looked at docker compose as an orchestration mechanism for activating applications which use multiple containers.

In this session we will look at two docker compose applications which can help with managing infrastructure.

## OpenNMS

[OpenNMS](https://github.com/opennms/opennms) is an open source network management application which can monitor network and compute infrastructure.
This is a widely used and free monitoring tool which could meet the needs of our customer

Other monitoring applications are also available which you might want to investigate
* [Prometheus](https://prometheus.io/docs/introduction/overview/)
* [Elk - Elastic Search, Log Stash, Kibana](https://www.elastic.co/elastic-stack)
* [Zabbix](https://www.zabbix.com/)

However in our work we will focus on OpenNMS

---
**Exercise 7.1  OpenNMS**

This example is taken from the full set of [OpenNMS tutorials](https://github.com/gallenc/opennms-tutorials-1) which you can review if you wish to take your knowledge further. 

Go through the exercises in  [docker-compose-examples/example7-1](../docker-compose-examples/example7-1).
Make sure you can explain 
* How the Docker Compose script confgures and runs OpenNMS
* How OpenNMS can monitor web sites 
* How OpenNMS can monitor servers and routers using snmp
* Discovering the machines in the lab
* In the networking lab, can you set up a router to repond to SNMP and let OpenNMS scan it?
---

## Ansible SemaphoreUI

[Ansible Semaphore UI](https://semaphoreui.com/) is an open source web front end for Ansible which makes it easy to run Ansible scripts from a web UI.

Semaphore makes it possible to schedule or track the manual running of ansible scripts downloaded from a git repository.
If you have predefined Ansible scripts, Semaphore makes it much easier to share them among staff and keep a record of what happens when they are run.

---
**Exercise 7.2  Ansible SemaphoreUI**

Go through the exercises in  [docker-compose-examples/example7-2](../docker-compose-examples/example7-2).
Make sure you can explain 
* How the Docker Compose script runs Ansible SemaphoreUI
* How Ansible Scripts can be run from github using SemaphoreUI
* Can you add an additional ansible project to install a web page on the Apache servers or to do another installation entirely.
---
