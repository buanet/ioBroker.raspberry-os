#!/bin/bash -e

# run iobroker install script
echo "[LOG] Installing ioBroker"
on_chroot << EOF
  curl -sLf https://iobroker.net/install.sh | bash -
EOF

# enable iobroker autostart
echo "[LOG] Enabling autostart"
on_chroot << EOF
  update-rc.d iobroker.sh defaults
EOF

# configure iobroker firstboot script
echo "[LOG] Installing iobroker-firstboot.sh"
install -m 775 files/iobroker-firstboot.sh "${ROOTFS_DIR}/etc/init.d/iobroker-firstboot.sh"
on_chroot << EOF
  update-rc.d iobroker-firstboot.sh defaults
EOF

# creating file to trigger UUID reconfiguration only on first startup
echo "[LOG] Creating checkfile /root/change_uuid"
  touch /root/change_uuid
