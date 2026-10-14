#!/bin/sh

interface="enp0s29f7u4"

ip address add local 192.168.1.16/24 broadcast 255.255.255.0 dev $interface
ip link set $interface up
ip route add default via 192.168.1.1 dev $interface
ip route del 192.168.1.0/24 dev $interface
