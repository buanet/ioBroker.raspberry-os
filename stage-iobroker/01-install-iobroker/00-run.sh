#!/bin/bash -e

# install node
on_chroot << EOF
echo "Installing Node"
curl -sLf https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
EOF

# run iobroker install script
on_chroot << EOF
echo "Installing ioBroker"
curl -sLf https://iobroker.net/install.sh | sudo -E bash -
ls -al
EOF

# enable iobroker autostart
on_chroot << EOF
echo "Enable autostart"
update-rc.d iobroker.sh defaults
EOF
