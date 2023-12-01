#!/bin/bash
# this script will run the first time the raspberry pi boots.
# it runs as root.

echo '>>> Starting firstboot.sh'

# resize root partion to possible maximum
echo -n 'Resizing root partition... '
raspi-config nonint do_expand_rootfs
echo 'Done.'

# get current date from debian time server
echo -n 'Updating date and time... '
ntpdate 0.debian.pool.ntp.org
echo 'Done.'

# check/ correct hostname in iobroker
if [[ $(iob object get "system.adapter.admin.0" --pretty | grep -oP '(?<="host": ")[^"]*') =! $(hostname) ]]; then
  echo -n 'Changing hostname in ioBroker... '
  sudo -u iobroker iobroker stop
  sudo -u iobroker iobroker host this
  echo 'Done.'
fi

# Reboot
echo 'Rebooting...'
reboot
