#!/bin/bash
# this script will run the first time the raspberry pi boots.
# it runs as root.

echo '>>> Starting firstboot.sh'

# resize root partion to possible maximum
echo 'Resizing root partition'
raspi-config nonint do_expand_rootfs

# get current date from debian time server
echo 'Updating date and time'
ntpdate 0.debian.pool.ntp.org

# reset uuid in iobroker 
echo 'Generating UUID for ioBroker'
cd /opt/iobroker
iob stop
iob unsetup -y

# Reboot
echo 'Rebooting'
reboot
