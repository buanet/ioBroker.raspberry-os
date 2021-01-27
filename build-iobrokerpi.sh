#!/bin/bash

# get pi-gen sources from Github
git clone https://github.com/RPi-Distro/pi-gen

# copy config file and iobrokerpi stage
cp config pi-gen/config
cp -R stage-iobroker pi-gen/stage-iobroker

# change working directory
cd pi-gen

# add skip files for skipped steps / delete not used export files
touch ./stage3/SKIP ./stage4/SKIP ./stage5/SKIP
touch ./stage4/SKIP_IMAGES ./stage5/SKIP_IMAGES
rm ./stage4/EXPORT* ./stage5/EXPORT*

# add hostname for docker container in build-docker.sh
sed -i 's/-e "GIT_HASH=${GIT_HASH}"/-e "GIT_HASH=${GIT_HASH}" --hostname iobroker-pi/' ./build-docker.sh

# starting build
echo "Start build process..."
#./build.sh | tee build.log
./build-docker.sh | tee build.log
