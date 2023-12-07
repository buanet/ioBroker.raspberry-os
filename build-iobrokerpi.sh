#!/usr/bin/env bash

# clean up
# sudo rm -R -f ./pi-gen

# get pi-gen sources from github
git clone --branch arm64 https://github.com/RPI-Distro/pi-gen.git

# copy config file and iobrokerpi stage
cp config pi-gen/config
cp -R stage-iobroker pi-gen/stage-iobroker

# allow execution
chmod -R +x pi-gen

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
#sudo ./build.sh | tee build.log
./build-docker.sh | tee build.log
