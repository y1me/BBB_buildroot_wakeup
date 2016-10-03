#! /bin/bash

echo $#
echo $0 
echo $1
echo $2

iptables --table nat --append POSTROUTING --out-interface $1 -j MASQUERADE
iptables --append FORWARD --in-interface $2 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
