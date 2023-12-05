# Official Raspberry OS image for ioBroker

 <img src="https://github.com/buanet/ioBroker.raspberry-os/raw/main/docs/img/iobroker_logo.png" width="600" title="ioBroker Logo">

[![Release](https://img.shields.io/github/v/release/buanet/ioBroker.raspberry-os)](https://github.com/buanet/ioBroker.raspberry-os/releases)
[![Github Issues](https://img.shields.io/github/issues/buanet/ioBroker.raspberry-os)](https://github.com/buanet/ioBroker.raspberry-os/issues)<br>
[![License](https://img.shields.io/github/license/buanet/ioBroker.raspberry-os)](https://github.com/buanet/ioBroker.raspberry-os/blob/master/LICENSE.md)
[![Donate](https://img.shields.io/badge/donate-paypal-blue)](https://paypal.me/buanet)

This project is used to auto generate pre configured Raspberry OS images for ioBroker IoT platform. For more details about ioBroker see: [iobroker.net](https://www.iobroker.net/).

## :rocket: Quick links

Don't know what's ioBroker? :arrow_right: [iobroker.net](https://www.iobroker.net)<br>
Don't know what's a Raspberry Pi? :arrow_right: [raspberrypi.org](https://www.raspberrypi.org/)<br>
Looking for the image to download? :arrow_right: [see latest release](https://github.com/buanet/ioBroker.raspberry-os/releases/latest)


This build uses the official Raspberry Pi OS build script from https://github.com/RPi-Distro/pi-gen. It takes the stages for the default lite image and adds a custom stage for setting up ioBroker.

## Build your own Raspberry OS image
Of course you can use this code to locally build your ioBroker RaspberryPi OS image from scratch. Take a look at https://github.com/RPi-Distro/pi-gen to learn how it works. 

## :eyes: Miscellaneous

### Beta testing

If you want to get the newest features and changes feel free to use/ test the beta releasees of the ioBroker Raspberry OS image. For more details and beta support join us at "beta testing & feedback" > "raspberry-image" at the [ioBroker Discord channel](https://discord.gg/5jGWNKnpZ8).

### Support the project

The easiest way to support this project is to leave me some likes/ stars on Github!<br>
If you want to give something back to the community, feel free to take a look into the [open issues](https://github.com/buanet/ioBroker.raspberry-os/issues) and help me answering questions, fixing bugs or adding new features!<br>
If that doesn't work for you and you want to buy me a pizza instead, you can do this here: <a href="https://www.paypal.me/buanet" target="_blank"><img src="https://github.com/buanet/ioBroker.docker/raw/main/docs/img/pp_logo.png" height="15" width="15"></a><br>
Thank you!

## :memo: Changelog

Moved to [CHANGELOG.md](CHANGELOG.md).

## :copyright: License

MIT License

Copyright (c) 2022 André Germann

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
