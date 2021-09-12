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
