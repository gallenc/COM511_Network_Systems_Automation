
## Installing Vagrant

Vagrant is an open-source tool by HashiCorp that simplifies creating and managing portable, reproducible development environments using virtual machines (VMs). 
It is very similar in function to `docker compose`

I am using Vagrant for Windows with VirtualBox

Vagrant can work with other virtualisation platforms including Vmware, docker and KVM. 
However most of the documentation seems to prefer VirtualBox so this seems the most sensible choice. 

Vagrant can also be installed on Apple MAC and linux computers but I will leave that to your own research.

You can download Vagrant from [install vagrant](https://developer.hashicorp.com/vagrant/install)

Normally Vagrant stores downloaded `.box` files and other user configuration in your windows local settings e.g `C:\Users\YourUser\.vagrant.d\`

However this can mean that the boxes are stored on a one drive or other network drive, so I prefer to make sure they are stored on the local C drive. 
The location is set using the VAGRANT_HOME variable

```
setx VAGRANT_HOME C:\devel\vagrant\vagranthome
```
(setx a command-line tool to permanently create or modify user or system environment variables, writing them to the registry for future command prompt sessions)


# Building your first vagrant machine

If you have installed VM's manually, you will realise that it is time consuming and error prone. 
Vagrant provides a way to automate the process of getting started with a standard configuration of virtual machine.

Vagrant is very easy to get started. 

Vagrant provide a number of pre-built `boxes` in the 'vagrant cloud' which are the starting point for creating a local machine.

See for instance [Alma Linux 10](alma linux  https://portal.cloud.hashicorp.com/vagrant/discover/almalinux/10)

Create a new empty folder and name it WITH NO SPACES IN THE NAME .

In the new folder, Initialise a new vagrant project using the pre-defined Alma Linux 10 bx

```
vagrant init almalinux/10 --box-version 10.1.20260110
```
This will create a `Vagrantfile` and a `.vagrant` folder in your folder. 

The `Vagrantfile` is a recipe (written in the ruby language) for building your machine. 
Look in the file and see the various options which you can modify. 

To start the VM use

```
vagrant up
```
It will take a while to download and start the machine.
Once it has started, try logging in using.

```
vagrant ssh 
```

Once logged in look for the injected `/vagrant` folder which should contain the contents of your project folder in which you started vagrant.

```
ls /vagrant
```

Exit the shell .

```
exit
```

List the boxes in your system.
You should see the downloaded box.

```
vagrant box list
```
Shut down the virtual machine

```
vagrant halt # will halt the machine
             # vagrant suspend will hibernate the machine
```

Delete the box and check it is deleted in VirtualBox

```
vagrant destroy
```

Note that while this may remove the machine from the VirtualBox gui, it may not remove it from the actual folder `C:\devel\virtualbox-machines`

If it is still there, delete it manually.

# Example projects

I have provided three example projects.
Review the first two projects but you dont have to build them. 
However have a real go at [example3](../vagrant-examples/example3) as it will create a base box for use later.

[example1](../vagrant-examples/example1) is a simple debian 11 project - very similar to what you have done above.

[example2](../vagrant-examples/example2) is an alma linux 10 project which uses the same vagrant file to create two machines. 

[example3](../vagrant-examples/example3) creates an alma linux 10 base project to create a box which is used by a downsteam project. 
This is the most important project as it is the basis for further work with Ansible. 


