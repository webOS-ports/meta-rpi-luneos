FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Workarounds for getting EGL and GLES2
SRC_URI += " \
    file://0015-broadcom-97425-eglfshook.patch \
    file://0016-add-rpi-config.patch \
    "

EXTRA_OECONF_remove = '-qpa wayland-egl'

EXTRA_OECONF_append = '--qpa=wayland'

EXTRA_OECONF += " \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/' \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/' \
    "

