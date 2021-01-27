#!/bin/bash -e

# configure firstboot options
install -m 775 files/rc.local "${ROOTFS_DIR}/etc/rc.local"
install -m 775 files/firstboot.sh "${ROOTFS_DIR}/root/firstboot.sh"

on_chroot << EOF
	systemctl enable rc-local
EOF
