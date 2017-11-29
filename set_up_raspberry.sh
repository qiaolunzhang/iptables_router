#!/usr/bin/env bash
ifconfig eth0 down
ifconfig eth0 192.168.139.3 netmask 255.255.255.0
route del -net default 2>/dev/null
route add default gw 192.168.139.1 2>/dev/null
echo "nameserver 202.120.2.101" > /etc/resolv.conf
vncserver :1

