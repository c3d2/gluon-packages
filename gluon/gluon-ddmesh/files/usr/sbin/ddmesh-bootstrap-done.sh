#!/bin/sh

. /lib/config/uci.sh

##
# Invoke hotplug script to assign IP addresses
##
hotplug_interface () {
    local config="$1"
    config_get DEVICE "$1" ifname
    export ACTION=ifup
    export INTERFACE=$1
    export DEVICE
    sh /etc/hotplug.d/iface/99-bmxd
}
config_load wireless
config_foreach hotplug_interface wifi-iface

##
# Configure & start bmxd
##
lua /lib/gluon/upgrade/400-bmxd
