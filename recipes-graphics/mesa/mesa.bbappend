# Copyright (c) 2020-2024 LG Electronics, Inc.

EXTENDPRAUTO:append = "webosrpi7"

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI:append:rpi = " \
    file://0001-implement-drm_create_linear_prime_buffer.patch \
"
