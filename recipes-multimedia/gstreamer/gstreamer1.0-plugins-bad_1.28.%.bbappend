# Copyright (c) 2018-2024 LG Electronics, Inc.

EXTENDPRAUTO:append:rpi = "webosrpi7"

DEPENDS:append:rpi = " webos-wayland-extensions"

PACKAGECONFIG:append:rpi = " kms wayland"

PACKAGECONFIG:remove:rpi = "faad"

# 0004 and 0005 are added unconditionally by
# meta-luneos/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.28.%.bbappend,
# which applies to rpi too, so adding them again here would apply each patch
# twice. They were only listed here because this bbappend was pinned to 1.26.%
# while meta-luneos was on 1.22.% - the two never matched the same recipe, so
# this file had been inert since gstreamer moved off 1.26.
