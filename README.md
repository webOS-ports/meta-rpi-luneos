LuneOS Raspberry Pi layer
=============
This layer will allow you to build a (mostly) functional image of LuneOS for the Raspberry Pi 2. Theoretically it should also work for the original Pi, but I don't have one so I have not verified.

## What works?

I've only tested with a Raspberry Pi 2, official touchscreen display and WiFi usb adapter. Touch works, apps work (except SDL apps), WiFi works. The keyboard is not currently hardware accelerated due to the poor driver situation on Raspberry Pi, but I'm hoping it will be soon.

## Instructions

First, setup the webOS ports build directory

```
mkdir webos-ports-env && cd webos-ports-env
wget https://raw.github.com/Andolamin/webos-ports-setup/alan/raspberrypi/Makefile
make setup-webos-ports
```

In webos-ports/meta-webos-ports/meta-luneui/recipes-qt/qt5/qtbase_git.bbappend, replace the line:
```
EXTRA_OECONF += "-qpa wayland-egl"
```
with:
```
EXTRA_OECONF += "-qpa wayland"
```

This should be fixed with updates to the recipes soon.

Build the image
```
cd webos-ports
. setup-env
MACHINE=raspberrypi2 bb luneos-image
```

You should be able to replace raspberrypi2 with raspberrypi to build for the original Pi, but I don't have one so I can't test. I expect that the recipes would need to be tweaked to support the original Raspberry Pi. You can also build other LuneOS images, such as luneos-dev-image.

To flash the image to your SD card, first you need to find which device is the correct one. Run `lsblk` or `df -h` and find the one that looks like your card. For example, mine is /dev/sdd, but it will likely differ for you.

Unmount your drive

```
sudo umount /dev/sdd*
```

Flash the image. I used luneos-image and raspberrypi2 so the following represents that. You might have to update your image path accordingly

```
sudo dd if=tmp-glibc/deploy/images/raspberrypi2/luneos-image-raspberrypi2.rpi-sdimg of=/dev/sdd
```

If, like me, you're using the official touchscreen, you'll need to configure the device to use it. Edit the config.txt file in the new "raspberrypi" partition that was created to include:

```
dtoverlay=rpi-ft5406-overlay
```

Please, report any issues you have.

## Copyright and License Information

Unless otherwise specified, all content, including all source code files and
documentation files in this repository are:

Copyright (c) 2015 Alan Stice

Unless otherwise specified or set forth in the NOTICE file, all content,
including all source code files and documentation files in this repository are:
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this content except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

