#!/bin/bash

### BEGIN INIT INFO
# Provides:          iobroker-firstboot
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: ioBroker First Boot Script
# Description:       This script will run on first system boot
### END INIT INFO

case "$1" in
  start)
    if [ -e /root/change_uuid ]
    then
      # remove check file
      rm /root/change_uuid
      # resetting uuid
      cd /opt/iobroker
      iob stop
      iob unsetup -y
      iob start
    else 
      update-rc.d iobroker-firstboot.sh remove
    fi
    exit 0
    ;;
  stop)
    exit 0
    ;;
  *)
    exit 1
    ;;
esac

exit 0
