#!/bin/bash

ovs-vsctl add-br br0
ovs-vsctl add-port br0 eth0
ifconfig eth0 0
dhclient br0
ovs-vsctl add-port br0 vport1 -- add-port br0 vport2
ifconfig vport1 up
ifconfig vport2 up
