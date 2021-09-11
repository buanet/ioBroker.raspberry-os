#!/bin/bash -e

# run iobroker install script
on_chroot << EOF
echo "curl -sLf https://iobroker.net/install.sh | bash -"
curl -sLf https://iobroker.net/install.sh | bash -
EOF

# enable iobroker autostart
on_chroot << EOF
echo "update-rc.d iobroker.sh defaults"
update-rc.d iobroker.sh defaults
EOF
