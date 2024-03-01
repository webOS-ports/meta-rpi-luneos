# Copyright (c) 2020-2024 LG Electronics, Inc.

EXTENDPRAUTO:append:rpi = "webosrpi8"

# packagegroup-luneos-extended says CEC is only supported on pi4-64
RDEPENDS:${PN}:append:raspberrypi4-64 = " libcec-examples"

NYX_MODULES_REQUIRED:append:raspberrypi4-64 = "NYXMOD_OW_CEC;"
