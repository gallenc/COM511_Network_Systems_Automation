[Main Menu](../../sessions/README.md) | [session1](../session1/) 

# Session 1 

## Introduction to Network Systems Automation

There used to be a significant divide between `Network Administrators`, `Systems Administrators` and `Programmers` but this distinction between the disciplines is rapidly disappearing as DEVOPS and DEVSECOPS are becoming normalised practices in large organisations.
THe networking and telecoms industry are rapidly pushing for convergence between networking and compute through organisations like the [CNCF Telecoms Infrastructure Program](https://www.telecominfraproject.com/) 
 
So what do we need to do to manage a large fleet of servers and switches?

![alt text](../docs/images/CERN_Server_03.jpg "CERN_Server_03.jpg")
(CERN Server Room https://commons.wikimedia.org/wiki/File:CERN_Server_03.jpg)

Consistent Process: 

When you have one or two systems to manage (like your own PC), most tasks can be done manually.
However if your job is to manage a large number of machines, you soon need to think about automating the most tedious tasks to save time money and errors.
You will find in typical systems administration teams, every member tends to have a preferred way of configuring systems, depending on their previous experience or familiarity with the technology.
But if work is shared across a team and they are responsible for a large data centre, it becomes increasingly important to develop and track changes to a consistent and tested configuration so that faults can be traced quickly.

Version Control:

Increasingly, software development techniques for version controlling and collaboratively working on code are being applied to systems and network  administration tasks and this is collectively referred to managing `Infrastructure as Code`.

Network systems Automation covers both the standards used to ensure the network is programmable and the systems used to automate the provisioning of the network. These include:

| systems                                   | examples |
|:------------------------------------------|---------------------------------------------|
| CMDB (Configuration Management Database)   | IP Address Management(IPAM) , Routing Tables, BGP tables management etc  |
| Orchestration | Ansible, Puppet, Chef, Salt, Kubernetes |
| Programmable compute models and APIs | Virtual Machines, Docker<BR> Static configuration, PXE Boot, Lognical and Physical inventory, Wiring diagrams etc.<BR> Dynamic Configuration DHCP, DNS, SDN OpenFlow, Cloud Stacks |


## infrastructure as code approach

## Git
git - ssh based access - personal access tokens

## Operating Systems

## Virtualisation

Virtualisation - type 1 / 2 hypervisor
VirtualBox
Vagrant

# Getting Started with Vagrant and Virtual Box
See [vagrant-examples](../session1/vagrant-examples)

## User Management
Post deploy script install what we need set up basic access
SSH based access for users - public private keys




