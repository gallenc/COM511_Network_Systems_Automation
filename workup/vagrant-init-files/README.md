\# VAGRANT BOXES



vagrant files created using vagrant init on windows with VirtualBox

These are used to create local vagrant master boxes for use when off line

Hashicorp are closing vagrant cloud, so these boxes have been created using vagrant cloud before it stops service. 

```
vagrant init BOX-VERSION   # e.g. 
vagrant up   
vagrant ssh  # log into the box to ensure working use 'exit' to logout


vagrant halt    # stop the box but keeps local metadata
vagrant destroy # only destroys the local metadata - not the master box


```

