EXTRA_OECONF_remove_rpi = "-qpa wayland-egl"

# For compatibility with meta-qt5/master with 5.15, meta-raspberrypi/master does (but dunfell correctly doesn't)
# https://github.com/agherzan/meta-raspberrypi/commit/eaa131425923a06e8be7547842bc2c105363f18e
PACKAGECONFIG_remove_rpi = "xkb"

EXTRA_OECONF_append_rpi = " --qpa=wayland"

EXTRA_OECONF_append_rpi = " \
    '-I${STAGING_INCDIR}/interface/vcos/pthreads/' \
    '-I${STAGING_INCDIR}/interface/vmcs_host/linux/' \
"
