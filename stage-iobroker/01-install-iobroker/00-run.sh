#!/bin/bash -e

# run iobroker install script
on_chroot << EOF
  curl -sLf https://iobroker.net/install.sh | bash -
EOF

# enable iobroker autostart
on_chroot << EOF
  update-rc.d iobroker.sh defaults
EOF
