#!/bin/sh
ip link set eth1 promisc on up
ip addr add 192.168.168.56/24 dev eth1
