FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

RDEPENDS_${PN} += "xkeyboard-config"

PACKAGECONFIG_GL = ""
PACKAGECONFIG_X11 = ""

PACKAGECONFIG_append =  " \
    accessibility \
    dbus \
    evdev \
    examples \
    gles2 \
    libs \
    linuxfb \
    sql-sqlite \
    teststools \
    tools \
    widgets \
    xkb \
    "

# Workarounds for getting EGL and GLES2
SRC_URI += "\
    file://0015-broadcom-97425-eglfshook.patch \
    file://0016-add-rpi-config.patch \
    file://0017-fix-rpi-cursor.patch \
    "

EXTRA_OECONF += "\
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/' \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/' \
    "
