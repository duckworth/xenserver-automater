#!/bin/sh
/sbin/chkconfig kickstart on
rm -rf /tmp
mkdir /tmp
chmod 777 /tmp
chmod +t /tmp

find /var/log -type f -exec rm {} \;
history -c
rm /root/.bash_history
/sbin/shutdown -h now
