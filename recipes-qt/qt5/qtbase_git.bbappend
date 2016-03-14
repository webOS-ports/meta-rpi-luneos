EXTRA_OECONF_remove_rpi = "-qpa wayland-egl"

EXTRA_OECONF_rpi += "--qpa=wayland-brcm"

EXTRA_OECONF_append_rpi = " \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/' \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/' \
    "

