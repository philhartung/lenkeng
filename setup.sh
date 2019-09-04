#!/bin/sh
ip link set $1 promisc on up
ip addr add 192.168.168.56/24 dev $1
ifconfig eth1 192.168.168.56 up
