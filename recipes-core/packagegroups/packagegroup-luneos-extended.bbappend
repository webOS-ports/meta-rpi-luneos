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

# gst-omx was dropped from oe-core (deprecated upstream, gone since GStreamer
# 1.24); on 64-bit RPi video decode uses v4l2codecs instead of the legacy OMX
# firmware interface, so don't append it anywhere. Note a :append:rpi is
# applied after machine-override assignments, so blanking per-machine (as the
# old raspberrypi3-64 line did) cannot remove it.
# VIRTUAL-RUNTIME_media:append:rpi = " \
#     gstreamer1.0-omx \
# "

# Default needed: an undefined variable would end up as a literal
# '${VIRTUAL-RUNTIME_media}' runtime dependency
VIRTUAL-RUNTIME_media ?= ""
RDEPENDS:${PN}:append:rpi = " \
    ${VIRTUAL-RUNTIME_media} \
"
