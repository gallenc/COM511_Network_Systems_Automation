[Main Menu](../../../sessions/README.md) |[session3](../../session3/) | [Session 3 Notes](../docs/sessionNotes.md)

# Session 3 Notes DHCP and DNS

We finished [Session2](../../session2) by looking at an example where Ansible was used to provision all the servers with an Apache web server. 
In this session, we will look ay how we can use Ansible to provision DHCP and DNS servers for our network.

## Dynamic Host Configuration Protocol (DHCP)

DHCP was developed in the early 1990s and is specified in [RFC2131](https://www.rfc-editor.org/info/rfc2131/) (which superseded the original [RFC1531](https://www.rfc-editor.org/info/rfc1531/)).

Have a look at [DHCP Explained in 3 minutes](https://www.youtube.com/watch?v=rA91cjP1vEg)

DHCP automatically assigns IP addresses to interfaces connected to a network based upon their MAC address.

DHCP can also provide `subnet ranges`, `gateway addresses` and `DNS server` addresses for the client to use.

As we will see later, DHCP can also be used to help install software to a router or server using the `PXE boot` process or `BOOTP` process.

If a network interface is set up as a DHCP client, it uses a DORA process (Discover, Offer, Request, Acknowledge) via UDP ports 67 and 68 to obtain its IP address from the DHCP server.

It is important that there is ONLY ONE authoritative DHCP server issuing addresses on a given subnetwork. 
A centralised authoritative server may be have its DHCP service relayed by routers to more than one subnet in the network.

If two competing servers are accidentally active, duplicate IP addresses may be issued and the network addressing will become very confused.
DHCP spoofing is an attack where a bogus DHCP server issues addresses instead of the authoritative DHCP server.

The DORA Steps are :

* Discover: Your device shouts out on the network to find an active server.
* Offer: The server replies with an open IP address and a lease time.
* Request: Your device picks that offer and asks to use it.
* Acknowledge: The server confirms the match and finalises the setup.

At the end of this process, the client has an IP address and has confirmed its configuration to the DHCP server. 

When an address is assigned, the DHCP server matches the IP address to a MAC address for that device.

DHCP can assign `static addresses`, where a given set of MAC addresses are permanently assigned to known IP addresses. 
THis allows us to identify physical servers in a data centre by their MAC address and give each of them a known IP address.

DHCP can also issue an address from a `pool` of addresses within the DHCP address range.

Usually addresses are issued with a `lease time`.
After the lease time expires, an address is freed up and may be reissued. 
This allows devices to be plugged in and receive an IP address which is free to be re-allocated when the machine leaves the network.
If the pool is exhausted, no more addresses will be issued until a lease expires.
(This can often happen with cheap Wifi routers that can only support a maximum of 254 ip addresses).

---
**Exercise 3.1**

Follow the notes  in [example3-1](../vagrant-examples/example3-1) to set up a dnsmasq DHCP server using ansible which can issue addresses to two other machines
* Make sure you understand the vagrant / virtualbox networking
* Can you understand the dnsmasq DHCP configuration and how it is created with ansible
* Can you use tcpdump to follow the DHCP requests and responses

---

# DNS Configuration



