#!/bin/bash
#
# this script will run the first time the raspberry pi boots
# it runs as root

echo "         Starting firstboot preparation..."

# resize root partion to possible maximum
echo "         Starting root partition resize..."
raspi-config nonint do_expand_rootfs > /root/firstboot.log
echo -e "[\033[32m  OK  \033[0m] Finished root partition resize."

# get current date and time from debian time server
echo "         Starting date and time update..."
ntpdate 0.debian.pool.ntp.org >> /root/firstboot.log
echo -e "[\033[32m  OK  \033[0m] Finished date and time update."

# check/ correct hostname in iobroker
if [[ $(iob object get "system.adapter.admin.0" --pretty | grep -oP '(?<="host": ")[^"]*') != $(hostname) ]]; then
  echo "         Starting hostname update in iobroker..."
  sudo -u iobroker iobroker stop >> /root/firstboot.log
  sudo -u iobroker iobroker host this >> /root/firstboot.log
  echo -e "[\033[32m  OK  \033[0m] Finished hostname update in iobroker."
fi

echo -e "[\033[32m  OK  \033[0m] Finished firstboot preparation."

# Reboot
echo 'Rebooting...'
reboot
