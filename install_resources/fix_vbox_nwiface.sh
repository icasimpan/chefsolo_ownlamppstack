#!/bin/bash

os_nw_scriptdir=/etc/sysconfig/network-scripts
active_iface_conf=$os_nw_scriptdir/ifcfg-eth1

## ----------------------------------------------------
## new network interface is eth1 after OS image
## so, create an ifcfg-eth1 out of existing ifcfg-eth0
## and change the DEVICE value and remove HWADDR so it
## will be auto-detected
## ----------------------------------------------------
mv $os_nw_scriptdir/ifcfg-eth0 $active_iface_conf
sed -i 's/DEVICE="eth0"/DEVICE="eth1"/' $active_iface_conf
sed -i '/HWADDR/d' $active_iface_conf
