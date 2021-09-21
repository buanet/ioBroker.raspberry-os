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

# temp logging to check uuid behavior
on_chroot << EOF
  cd /opt/iobroker
  echo "[LOG] This is the build UUID: $(iobroker uuid)"
EOF

# resetting ioBroker UUID
echo "[LOG] Resetting ioBroker UUID"
on_chroot << EOF
  cd /opt/iobroker
  iobroker stop
  iobroker unsetup -y
EOF
