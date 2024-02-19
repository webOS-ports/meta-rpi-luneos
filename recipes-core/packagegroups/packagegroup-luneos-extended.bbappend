# Copyright (c) 2017-2024 LG Electronics, Inc.

#EXTENDPRAUTO:append:rpi = "webosrpi12"

VIRTUAL-RUNTIME_com.webos.service.cec ?= ""
# CEC service functionality is supported only for webOS OSE rpi4-64
VIRTUAL-RUNTIME_com.webos.service.cec:raspberrypi4-64 = " \
    com.webos.service.cec \
"

RDEPENDS:${PN}:append:rpi = " \
    alsa-utils \
    com.webos.service.audiofocusmanager \
    com.webos.service.audiooutput \
    com.webos.service.hfp \
    com.webos.service.location \
    com.webos.service.mediaindexer \
    com.webos.service.peripheralmanager \
    com.webos.service.power2 \
    ofono \
    phonesim \
    ${VIRTUAL-RUNTIME_com.webos.service.cec} \
"

RDEPENDS:${PN}:append:rpi = " \
    mesa-megadriver \
"

# gst omx is used only for raspberrypi builds
VIRTUAL-RUNTIME_media:append:rpi = " \
    gstreamer1.0-omx \
"
# Until build issues caused by PLAT-44962 are fixed in PLAT-45700
VIRTUAL-RUNTIME_media:raspberrypi3-64 = ""

RDEPENDS:${PN}:append:rpi = " \
    ${VIRTUAL-RUNTIME_media} \
"
