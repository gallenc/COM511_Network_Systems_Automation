## Ansible Automation

## Introduction

The [Red Hat Ansible Automation Platform](https://docs.ansible.com/projects/ansible/latest/reference_appendices/tower.html) (formerly called Ansible Tower) is the commercial enterprise version of Ansible, developed and supported by Red Hat. It provides a web-based user interface, dashboard, and REST API to help teams scale and control their IT automation. 
It provides the following key features:

• Web UI & Dashboard: Replaces the command-line interface with a visual console for real-time node monitoring and job tracking.
• Role-Based Access Control (RBAC): Manages user and team permissions, with integration for LDAP and Active Directory.
• Job Scheduling: Automates and repeats playbook runs or inventory syncs.
• Workflows: Chains multiple playbooks together into complex, multi-step automated processes.
• Centralized Credentials: Securely stores and manages access keys, SSH credentials, and cloud tokens without exposing them to users.

![alt text](./images/Anbile-Tower-strategy.png "Figure Anbile-Tower-strategy.png")

The Ansible Automation Platform is widely deployed but is complex to set up and use. 

We will be looking at a simpler open source platform, [SemaphoreUI](https://semaphoreui.com/) which provides the same key features but is simpler to deploy.

## SemaphoreUI

[SemaphoreUI](https://semaphoreui.com/) is an open-source, self-hosted web interface and API control center designed to manage and run DevOps automation tools.

[Semaphore UI Documentation](https://docs.semaphoreui.com/administration-guide/)

Semaphore provides the user with a dashboard with buttons to run scripts on remote machines. 
These scripts can be ansible, bash or kubernetes automations which can be run manually or on a schedule or even through a ReST API.

This diagram shows the result of one of our example ansible scripts being run manually.

![alt text](./images/semaphore6.png "Figure semaphore6.png")

SemaphoreUI starts by checking out a clone of a remote repository (or pulling an update if it already exists). 
It then runs a playbook within the repository and records a log of the results.
Thus we have a record of which logged in user has run playbooks and a record of the results of every run.

This images shows a playbook definition.
 
![alt text](./images/semaphore3.png "Figure semaphore3.png")

The location of the playbook to be run is given relative to the root of the chosen repository. 
The inventory to be used with the playbook is chosen from a list of pre-defined inventories.
Additional variables can be defined, and also questions to ask users to get variables such as passwords.

We can pre-define multiple repositories and multiple inventories.

Each predefined repository is defined with a link to a git hosting site (i.e. github, gitlab or sourceforge) potentially with access keys if the repo is private.

![alt text](./images/semaphore4.png "Figure semaphore4.png")

Similarly, each inventory is also located relative to the root of a chosen repository

![alt text](./images/semaphore5.png "Figure semaphore5.png")

The semaphoreUI can support multiple projects. 
Each project can be saved or loaded from a json file, as shown here. 
We can also use the command line to load a project - which is how we load the default project from the docker compose project.

![alt text](./images/semaphore1.png "Figure semaphore1.png")
 
 ## Ansible projects in the example
 
![alt text](./images/semaphore2.png "Figure semaphore2.png")
 







