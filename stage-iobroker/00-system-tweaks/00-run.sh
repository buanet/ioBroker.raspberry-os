#!/bin/bash -e

# configure firstboot options
install -m 775 files/rc.local "${ROOTFS_DIR}/etc/rc.local"
install -m 775 files/firstboot.sh "${ROOTFS_DIR}/root/firstboot.sh"

on_chroot << EOF
  systemctl enable rc-local
EOF

# change boot target
on_chroot << EOF
  systemctl set-default multi-user.target
EOF

# set memory split
on_chroot << EOF
  echo >> /boot/config.txt
  echo "gpu_mem=16" >> /boot/config.txt
EOF
