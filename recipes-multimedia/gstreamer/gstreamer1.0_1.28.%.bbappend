# Copyright (c) 2018-2024 LG Electronics, Inc.

EXTENDPRAUTO:append:rpi = "webosrpi4"

WEBOS_REPO_NAME:rpi = "gstreamer"

# 0001-Add-support-for-seamless-seek-trickplay.patch is already added
# unconditionally by meta-luneos's gstreamer1.0_1.28.%.bbappend; adding it
# again here made do_patch fail with "patch is already applied" on rpi.
