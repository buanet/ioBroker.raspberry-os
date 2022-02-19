# Raspberry OS image with ioBroker

[![Release](https://img.shields.io/github/v/release/buanet/ioBroker.raspberry-os)](https://github.com/buanet/ioBroker.raspberry-os/releases)
[![Github Issues](https://img.shields.io/github/issues/buanet/ioBroker.raspberry-os)](https://github.com/buanet/ioBroker.raspberry-os/issues)<br>
[![License](https://img.shields.io/github/license/buanet/ioBroker.raspberry-os)](https://github.com/buanet/ioBroker.raspberry-os/blob/master/LICENSE.md)
[![Donate](https://img.shields.io/badge/donate-paypal-blue)](https://paypal.me/buanet)

This repo is used to auto generate preconfigured Raspberry OS images for ioBroker IoT platform. For more details about ioBroker and the download of the lastest image see: [iobroker.net](https://www.iobroker.net/).

This build uses the official Raspberry Pi OS build script from https://github.com/RPi-Distro/pi-gen. It takes the stages for the default lite image and adds a custom stage for setting up ioBroker.

## Build your own Raspberry OS image
Of course you can use this code to locally build your ioBroker RaspberryPi OS image from scratch.
This is how it works.

### Prerequisites
This script is made for running on a Linux Platform like Debian or Ubuntu.
As this build script is using Docker, make sure you have it up and running on your machine. 

Clone the code to your local system:

```
git clone https://github.com/buanet/ioBroker.raspberry-os
```

### Starting build
Start the build process (from inside the cloned ioBroker.raspberry-os folder):
```
sudo ./build-iobrokerpi.sh
```
The script will download pi-gen source and start building automatically.

Depending on your environment, the process can take some (more) time.

After success you will find your Image in ```./pi-gen/deploy/```.

### Cleanup
Cleanup your workspace with the included cleanup script. It will delete the pi-gen source and the used docker container.
```
sudo ./cleanup.sh
```

### Configuration
You can configure settings like locales, default User and more by editing the ```config``` file. For more details see the original [pi-gen readme.md](https://github.com/RPi-Distro/pi-gen/blob/master/README.md).

## Changelog

### v1.2.0-beta (2021-08-08)
* adding uuid reset procedure for iobroker
* update default config_de

### v1.1.0 (2021-07-27)
* added automated build process with github actions
* default user is now "pi"

### v1.0.0 (2021-03-08)
* added some documentation
* v0.0.2 (2021-02-01)
  * changed memory split
  * changed boot target
* v0.0.1 (2021-01-27)
    * project started / initial release

## License

MIT License

Copyright (c) 2022 [André Germann]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Credits

This project uses the [official RPi-Distro/pi-gen](https://github.com/RPi-Distro/pi-gen) and is inspired by the [Honey-Pi project](https://github.com/Honey-Pi/HoneyPi-Build-Raspbian).
