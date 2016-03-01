FILESEXTRAPATHS_prepend_rpi := "${THISDIR}/${PN}:"

SRC_URI_append_rpi += " \
    file://001-add-raspberrypi-conf.patch \
    "

