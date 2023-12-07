#!/bin/bash
# this script will run the first time the raspberry pi boots.
# it runs as root.

echo "         Starting firstboot.sh..."

# resize root partion to possible maximum
echo "         Starting resizing root partition..."
raspi-config nonint do_expand_rootfs > /root/firstboot.log
echo -e "[\033[32m  OK  \033[0m] Finished resizing root partition."

# get current date from debian time server
echo "         Starting date and time update..."
ntpdate 0.debian.pool.ntp.org >> /root/firstboot.log
echo -e "[\033[32m  OK  \033[0m] Finished date and time update."

# check/ correct hostname in iobroker
if [[ $(iob object get "system.adapter.admin.0" --pretty | grep -oP '(?<="host": ")[^"]*') != $(hostname) ]]; then
  echo "         Starting hostname update in iobroker..."
  sudo -u iobroker iobroker stop
  sudo -u iobroker iobroker host this
  echo -e "[\033[32m  OK  \033[0m] Finished hostname update in iobroker."
fi

echo -e "[\033[32m  OK  \033[0m] Finished firstboot.sh."

# Reboot
echo 'Rebooting...'
reboot
