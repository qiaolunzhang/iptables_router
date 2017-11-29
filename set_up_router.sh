#!/usr/bin/env bash
modprobe iptable_nat
echo 1 > /proc/sys/net/ipv4/ip_forward
ifconfig enp0s25 192.168.139.1 netmask 255.255.255.0
iptables -t nat -A POSTROUTING -o wlp4s0 -j MASQUERADE
iptables -A FORWARD -i enp0s25 -j ACCEPT
#Commands Credit: Farukesh, DITISS, CDAC

