day 2 
Switch>enable
Switch#conf t
Switch(config)#
Switch(config)#hostname SW1
SW1(config)#banner motd "hey "
SW1)config)#service password-encryption
SW1(config)#line console 0
SW1(config-line)#password 123
SW1(config-line)#login
SW1(config-line)#exit

===============
enable password 
SW1(config)#enable password 111
SW1(config)#enable secret 222
====================
vty password
SW1(config)#line vty 0 3
SW1(config-line)#password 333
SW1(config-line)#login
SW1(config-line)#exit
------------------------------

SW1(config)#username sarah password 111
SW1(config)#username mohamed password 222
SW1(config)#username ahmed password 333
SW1(config)#line vty 0 6 
SW1(config-line)#login local
SW1(config-line)#exit
SW1(config)#line console 0 
SW1(config-line)#login local
SW1(config-line)#exit
-------------------
SW1(config)#int vlan 1
SW1(config-if)#no sh
SW1(config-if)#ip address 192.168.1.1 255.255.255.0
---------------------------
 VLAN
onsw1

s1(config)#vlan 10
s1(config-vlan)#name hr
s1(config-vlan)#vlan 20
s1(config-vlan)#name it
s1(config-vlan)#vlan 30 
s1(config-vlan)#name sales
------------------------------------
s1(config)#int  f0/1
s1(config-if-)#switchport mode access 
s1(config-if-)#switchport access vlan 10
s1(config-if)#int  f0/3
s1(config-if)#switchport mode access 
s1(config-if)#switchport access vlan 20
s1(config-if-range)#in  f0/4
s1(config-if)switchport mode access 
s1(config-if)#switchport access vlan 30
----------------
between 2 sw
int g0/1
s1(config-if)#switchport mode trunk
s1(config-if)#switchport  trunk native vlan 90
s1(config-if)#switchport  trunk allowed vlan 10 (option)


s1(config)#do sho vlan
-----------------------
on sw2


s2(config)#vlan 10
s2(config-vlan)#name hr
s2(config-vlan)#vlan 20
s2(config-vlan)#name it
s2(config-vlan)#vlan 30 
s2(config-vlan)#name sales
s2(config)#int  f0/1
s2(config-if-)#switchport mode access 
s2(config-if-)#switchport access vlan 10
s2(config-if)#int  f0/3
s2(config-if)#switchport mode access 
s2(config-if)#switchport access vlan 20
s2(config-if-range)#in  f0/4
s2(config-if)switchport mode access 
s2(config-if)#switchport access vlan 30
------------------------------------------------
SW1(config)#int vlan 80
SW1(config-if)#no sh
SW1(config-if)#ip address 192.168.80.1 255.255.255.0
#day 3
Switch(config)#int G0/1
Switch(config-if)#switchport mode trunk 
------------------------
vtp
1-vtp mode (server or client)
2-vtp domain 
3-vtp password 
------------------------------------------
PVST
1-SW1(config)#spanning-tree mode pvst
2-SW1(config)#spanning-tree vlan 10,20 root primary 
----------------------------------------
int f0/1
Switch(config)#interface  f0/1
Switch(config-if)#switchport mode access 
Switch(config-if)##switchport access vlan 10
sw2(config-if)#spanning-tree bpduguard enable 
sw2(config-if)#spanning-tree portfast 
interface range fa0/1 - 24
no spanning-tree bpduguard enable
no spanning-tree portfast 


spanning-tree bpduguard enable 
spanning-tree portfast 
---------------------------------------------------
ssh
Switch(config)#interface vlan 50
Switch(config-if)#ip address 192.168.50.1 255.255.255.0 
Switch(config)#enable secret 333
Switch(config)#hostname SW1
SW1(config)#username sarah password 123
SW1(config)#ip domain-name iti.com
SW1(config)#crypto key generate rsa
The name for the keys will be: SW1.iti.com
Choose the size of the key modulus in the range of 360 to 2048 for your
  General Purpose Keys. Choosing a key modulus greater than 512 may take
  a few minutes.

How many bits in the modulus [512]: 1024
% Generating 1024 bit RSA keys, keys will be non-exportable...[OK]

SW1(config)#li
*Mar 1 0:7:36.943: %SSH-5-ENABLED: SSH 1.99 has been enabled
W1(config)#line vty 0 3
SW1(config-line)#login local
SW1(config-line)#transport input ssh
SW1(config-line)#exit


Dear Hiring Manager,

I am writing to express my strong interest in the teaching assistant role for the [Course Name] at [University/College Name]
Switch(config-if)#ip address 192.168.1.1 255.255.255.0
Switch(config-if)#no shutdown 
Switch(config)#enable secret 333
Switch(config)#hostname SW1
SW1(config)#username sarah password 123
SW1(config)#ip domain-name iti.com
SW1(config)#crypto key generate rsa
The name for the keys will be: SW1.iti.com
Choose the size of the key modulus in the range of 360 to 2048 for your
  General Purpose Keys. Choosing a key modulus greater than 512 may take
  a few minutes.

How many bits in the modulus [512]: 1024
% Generating 1024 bit RSA keys, keys will be non-exportable...[OK]

SW1(config)#li
*Mar 1 0:7:36.943: %SSH-5-ENABLED: SSH 1.99 has been enabled
W1(config)#line vty 0 2
SW1(config-line)#login local
SW1(config-line)#transport input ssh
SW1(config-line)#exit
--------------------------------
 day 4
 portsecurity

Switch(config)# interface f0/1
Switch(config-if)# switchport mode access
Switch(config-if)# switchport port-security
Switch(config-if)#switchport port-security mac-address sticky 
Switch(config-if)#switchport port-security violation shutdown  

snooping
Switch(config)# ip dhcp snooping
Switch(config)# ip dhcp snooping vlan 1
Switch(config)# interface f0/1
Switch(config-if)# ip dhcp snooping trust
STARVIATION
Switch(config)# interface f0/2
Switch(config-if)#ip dhcp snooping limit rate 3
DAI
Switch(config)# ip arp inspection vlan 1
Switch(config)# interface g0/1 
Switch(config-if)# ip arp inspection trust


#LAP INSTRUCTIONS
1-switch1 --server1 root 100
2-switch 2--client root 200
3-switch--server2 root 300
--
-VTP DOMAIN ITI
-PVST

-manage server1 vlan 80 by ssh
-- vlan 200 can ping vlan 200
--vlan 300 can ping vlan 300

-pc7 -- vlan 200 portsecurity sh
-pc9 --vlan 300  portsecurity r
-pc8(1) --vlan 200  portsecurity r
--pc9(1) --vlan 200  portfast.bpduguard 
-vlan 200 on server1 dhcp snooping ,dai
-pcs on vlan 200 ip from dhcp server
---------------------------------
#LAP INSTRUCTIONS
1-switch1 --server1 root 100   -manage server1 vlan 80 by ssh
2-switch 2--client root 200
3-switch--server2 root 300
--
-VTP DOMAIN ITI
-PVST
 
-- vlan 200 can ping vlan 200
--vlan 300 can ping vlan 300

-pc7 -- vlan 200 portsecurity sh
-pc9 --vlan 300  portsecurity r
-pc8(1) --vlan 200  portsecurity r
--pc9(1) --vlan 200  portfast.bpduguard 
-vlan 200 on server1 dhcp snooping ,dai
-pcs on vlan 200 ip from dhcp server










# 🔧 LAP CONFIGURATION COMMANDS

## 🔹 Switch1 (VTP Server, Root for VLAN 100, Server1 on VLAN 80 with SSH)
vtp domain ITI
vtp mode server
vtp password iti123
spanning-tree mode pvst
spanning-tree vlan 100 root primary

vlan 100
vlan 200
vlan 300
vlan 80
//For making management Vlan to make switch to be accessible remotely 
interface vlan 80
 ip address 192.168.80.1 255.255.255.0
 no shutdown

interface fa0/3
 switchport mode access
 switchport access vlan 80
//for SSH
Hostname s1
ip domain-name iti.local
crypto key generate rsa
username fatma secret 123
line vty 0 4
 login local
 transport input ssh
enable secret 123
//ssh -l fatma 192.168.80.1

ip dhcp snooping
ip dhcp snooping vlan 200
ip arp inspection vlan 200

For SERVER
interface fa0/1
switchport mode access
switchport access vlan 200
ip dhcp snooping trust
ip arp inspection trust

## 🔹 Switch2 (Client, Root for VLAN 200)
vtp domain ITI
vtp mode client
vtp password iti123
spanning-tree mode pvst
spanning-tree vlan 200 root primary

## 🔹 Switch3 (Client, Root for VLAN 300)
vtp domain ITI
vtp mode client
vtp password iti123
spanning-tree mode pvst
spanning-tree vlan 300 root primary

## 🔹 PC7 - VLAN 200 - Port Security Shutdown
interface fa0/x
 switchport mode access
 switchport access vlan 200
 switchport port-security
 switchport port-security mac-address sticky
 switchport port-security violation shutdown

## 🔹 PC8(1) - VLAN 200 - Port Security Restrict
interface fa0/x
 switchport mode access
 switchport access vlan 200
 switchport port-security
 switchport port-security mac-address sticky
 switchport port-security violation protect

## 🔹 PC9 - VLAN 300 - Port Security Restrict
interface fa0/x
 switchport mode access
 switchport access vlan 300
 switchport port-security
 switchport port-security mac-address sticky
 switchport port-security violation restrict

## 🔹 PC9(1) - VLAN 200 - PortFast + BPDU Guard
interface fa0/x
 switchport mode access
 switchport access vlan 200
 spanning-tree portfast
 spanning-tree bpduguard enable

## 🔹 DHCP Server1 Configuration (GUI)
- Pool Name: VLAN200
- Network: 192.168.200.0
- Subnet: 255.255.255.0
- Default Gateway: 192.168.200.1
- DNS Server: 8.8.8.8 (optional)
- Service: ON


static routing

Router#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
Router(config)#
Router(config)#
Router(config)#int g0/0
Router(config-if)#no shutdown 
Router(config-if)#ip address 192.168.0.1 255.255.255.0
Router(config-if)#int g0/1 
Router(config-if)#no shutdown 
Router(config-if)#ip address 192.168.1.1 255.255.255.0

ip address 10.0.0.1 255.255.255.0
 static route
Router#conf t
Router(config)#ip route 192.168.0.0 255.255.255.0 g0/1
Router(config)#ip route 192.168.1.0 255.255.255.0 192.168.1.2
creat static default route
R4(config)# ip route 0.0.0.0 0.0.0.0 g0/2
-----------------------------------------
RIP
Router(config)#router rip 
Router(config-router)#version 2
Router(config-router)#no auto-summary 
Router(config-router)#network 192.168.0.0
Router(config-router)#network 192.168.1.0
router rip 
version 2
no auto-summary 
network 172.16.0.1
network 172.16.1.2

router rip 
version 2
no auto-summary 
network 172.16.2.1
network 172.16.1.1
network 172.16.3.1

router rip 
version 2
no auto-summary 
network 172.16.4.1
network 172.16.3.2

router-id 1.1.1.1
router ospf 10
network 192.168.100.0 0.0.0.255 area 0
network 192.168.101.0 0.0.0.255 area 0

ip address 192.168.0.1 255.255.255.0
interface g 0/0.7
encapsulation dot1q 7
ip address 10.0.7.1 255.255.255.0 
interface g 0/0.6
encapsulation dot1q 6
ip address 10.0.6.1 255.255.255.0 

1-• Configuring Router-On-Stick for vlan routing:
R1(config)#interface g 0/1
R1(config-if)#no shutdown 
R1(config)# interface g 0/1.10
R1(config-subif)# encapsulation dot1q 10
R1(config-subif)#ip address 192.168.10.1 255.255.255.0 
R1(config-subif)# interface g 0/1.20
R1(config-subif)# encapsulation dot1q 20
R1(config-subif)#ip address 192.168.20.1 255.255.255.0
-----------
sw
Switch(config)#int f0/1
Switch(config-if)#
Switch(config-if)#switchport mode acess
Switch(config-if)# switchport acess vlan 10
Switch(config)#int f0/2
Switch(config-if)#
Switch(config-if)#switchport mode acess
Switch(config-if)# switchport acess vlan 20
 Switch(config)#int g0/1
Switch(config-if)#switchport mode trunk



------------------------------------------------------------------
2-• Configuring Multi layer switch (Inter vlan routing):
Multi layer Switch to End devices:
Switch#config t
Switch(config)#vlan 40
Switch(config-vlan)#vlan 50
Switch(config)#int f0/1
Switch(config-if)#


Switch(config-if)#switchport mode acess
Switch(config-if)# switchport acess vlan 40
Switch(config)#int f0/2
Switch(config-if)#
Switch(config-if)#switchport mode acess
Switch(config-if)# switchport acess vlan 50
Switch(config)#  int vlAN 40
Switch(config-if)#ip add 192.168.40.1 255.255.255.0
Switch(config)#  int vlAN 50
Switch(config-if)#ip add 192.168.50.1 255.255.255.0

6-Switch(config)#ip routing


----------------------------------------

Multi layer Switch to Router:
1-Switch#config t
2-Switch(config)#int G0/1
3-Switch(config-if)#no switchport
4-Switch(config-if)#ip add 192.168.100.1 255.255.255.0
--------------------------------------------------------
for routing
Switch(config)#router eigrp 10
switch(config-router)# network 0.0.0.0

router eigrp 10
network 0.0.0.0
---------------------------------------
dhcp on R1
Router(config)#ip dhcp pool net50
Router(dhcp-config)#net
Router(dhcp-config)#network 192.168.50.0 255.255.255.0
Router(dhcp-config)#de
Router(dhcp-config)#default-router 192.168.50.1
Router(dhcp-config)#dns
Router(dhcp-config)#dns-server 8.8.8.8
------------------------------------
on mls 
Switch(config)#int vlan 50
Switch(config-if)#ip helper-address 192.168.60.2
-------------------------
on Router-On-Stick 
Router(config-if)#int g0/0.10
Router(config-subif)#ip helper-address 192.168.60.2

int g0/0.40
ip helper-address 10.0.1.1
int g0/0.20
ip helper-address 10.0.1.1








standard numbered
Router(config)#access-list 1 deny host 10.0.0.100
Router(config)#access-list 1 permit any 
--
Router(config)#int g0/0.16
Router(config-subif)#ip access-group 1 out
------------------------------------------------------------
standard named
Switch(config)#ip access-list standard iti
Switch(config-std-nacl)#deny 14.0.0.0 0.0.0.255 
Switch(config-std-nacl)#permit any 
-
Switch(config)#interface vlan 12
Switch(config-if)#ip access-group iti out
--------------------------------------------------
extended numbered
Router(config)#access-list 101 deny tcp host 10.0.0.100 host 17.0.0.101 eq 80
Router(config)#access-list 101 permit ip  any  any
--
Router(config)#int g0/0
Router(config-subif)#ip access-group 101 in
------------------------------------------------------------
extended named
Router(config)#ip access-list extended ccna
Router(config-std-nacl) deny icmp host 192.168.5.100 host 192.168.3.101
Router(config-std-nacl)  permit ip any any 
--
Router(config)#int g0/0.16
Router(config-subif)#ip access-group ccna in

Switch(config)#int G0/1
Switch(config-if)#switchport mode trunk 
------------------------
vtp
1-vtp mode (server or client)
2-vtp domain 
3-vtp password 
------------------------------------------
PVST
1-SW1(config)#spanning-tree mode pvst
2-SW1(config)#spanning-tree vlan 10,20 root primary 
----------------------------------------
int f0/1
Switch(config)#interface  f0/1
Switch(config-if)#switchport mode access 
Switch(config-if)##switchport access vlan 10
sw2(config-if)#spanning-tree bpduguard enable 
sw2(config-if)#spanning-tree portfast 
---------------------------------------------------
ssh
Switch(config)#interface vlan 50
Switch(config-if)#ip address 192.168.50.1 255.255.255.0 
Switch(config)#enable secret 333
Switch(config)#hostname SW1
SW1(config)#username sarah password 123
SW1(config)#ip domain-name iti.com
SW1(config)#crypto key generate rsa
The name for the keys will be: SW1.iti.com
Choose the size of the key modulus in the range of 360 to 2048 for your
  General Purpose Keys. Choosing a key modulus greater than 512 may take
  a few minutes.

How many bits in the modulus [512]: 1024
% Generating 1024 bit RSA keys, keys will be non-exportable...[OK]

SW1(config)#li
*Mar 1 0:7:36.943: %SSH-5-ENABLED: SSH 1.99 has been enabled
W1(config)#line vty 0 3
SW1(config-line)#login local
SW1(config-line)#transport input ssh
SW1(config-line)#exit










Dear Hiring Manager,



I am writing to express my strong interest in the teaching assistant role for the [Course Name] at [University/College Name]
Switch(config-if)#ip address 192.168.1.1 255.255.255.0
Switch(config-if)#no shutdown 
Switch(config)#enable secret 333
Switch(config)#hostname SW1
SW1(config)#username sarah password 123
SW1(config)#ip domain-name iti.com
SW1(config)#crypto key generate rsa
The name for the keys will be: SW1.iti.com
Choose the size of the key modulus in the range of 360 to 2048 for your
  General Purpose Keys. Choosing a key modulus greater than 512 may take
  a few minutes.

How many bits in the modulus [512]: 1024
% Generating 1024 bit RSA keys, keys will be non-exportable...[OK]

SW1(config)#li
*Mar 1 0:7:36.943: %SSH-5-ENABLED: SSH 1.99 has been enabled
W1(config)#line vty 0 2
SW1(config-line)#login local
SW1(config-line)#transport input ssh
SW1(config-line)#exit
--------------------------------
interface fa0/4
switchport mode access
switchport access vlan 300

interface fa0/3
switchport mode access
switchport access vlan 200






access-list 1 deny 192.168.11.0 0.0.0.255
access-list 1 permit any
interface gigabitEthernet 0/0
ip access-group 1 out

 access-list 1 deny 192.168.10.0 0.0.0.255
 access-list 1 permit any
 interface gigabitEthernet 0/0
 ip access-group 1 out




interface f0/1
switchport mode access
switchport access vlan 6
interface f0/2
switchport mode access
switchport access vlan 7




interface fa0/1


interface g 0/0.20
encapsulation dot1q 20
ip address 10.0.2.1 255.255.255.0 
interface g 0/0.40
encapsulation dot1q 40
ip address 10.0.4.1 255.255.255.0 
int g0/0.6
ip helper-address 10.0.1.1 
int g0/0.7
ip helper-address 10.0.1.1 
no interface g 0/1.6
no interface g 0/1.7
no ip address 


interface g 0/0.20
encapsulation dot1q 20
ip address 10.0.2.1 255.255.255.0 
interface g 0/0.40
encapsulation dot1q 40
ip address 10.0.4.1 255.255.255.0 

