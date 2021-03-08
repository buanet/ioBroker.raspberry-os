# Build a Raspberry OS Image for ioBroker

This script is used to auto generate preconfigured Raspberry OS Images for ioBroker IoT platform. For more details about ioBroker and the download of the last image see: [iobroker.net](https://www.iobroker.net/).

This build script uses the official Raspberry Pi OS build script from https://github.com/RPi-Distro/pi-gen. It takes the stages for the default Lite Image and adds a custom stage for setting up ioBroker.

## How to use
You can use this script to build your own ioBroker RaspberryPi OS image from source.

### Prerequisites
This script is made for running on a Linux Platform like Debian or Ubuntu.
Make sure you have Docker up and running. 

Clone the code to your local system:

```
git clone https://github.com/buanet/ioBroker.raspberry-os
```

### Starting build
Start the build process (from inside the cloned ioBroker.raspberry-os folder):
```
sudo ./build-iobrokerpi.sh
```
The script will download pi-gen source and start building.

After success you will find your Image in ```./pi-gen/deploy/```.

### Cleanup

Cleanup your workspace with the included cleanup script:
```
sudo ./cleanup.sh
```

## Configuration

You can configure settings like locales, default User and more by changing the ```config``` file. For details see the [pi-gen readme.md](https://github.com/RPi-Distro/pi-gen/blob/master/README.md).

## Changelog

### v1.0.0 (2021-03-08)
* added some documentation
* v0.0.2 (2021-02-01)
  * changed memory split
  * changed boot target
* v0.0.1 (2021-01-27)
    * project started / initial release

## License

MIT License

Copyright (c) 2021 [André Germann]

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

Uses [official RPi-Distro/pi-gen](https://github.com/RPi-Distro/pi-gen) and is inspired by the [Honey-Pi project](https://github.com/Honey-Pi/HoneyPi-Build-Raspbian)
