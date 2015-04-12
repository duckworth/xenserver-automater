#!/bin/bash
# Install xenstore
apt-get install -y xenstore-utils

# Copy scripts
cp usr/sbin/xe-set-authorized-keys /usr/sbin/xe-set-authorized-keys
cp usr/sbin/xe-set-hostname /usr/sbin/xe-set-hostname
cp usr/sbin/xe-set-network-deb /usr/sbin/xe-set-network
cp etc/init/xe-automator.conf /etc/init/xe-automater.conf
chmod a+x /usr/sbin/xe-set-authorized-keys
chmod a+x /usr/sbin/xe-set-hostname
chmod a+x /usr/sbin/xe-set-network
