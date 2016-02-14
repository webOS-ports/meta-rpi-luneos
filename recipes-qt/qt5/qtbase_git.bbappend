# EXTRA_OECONF_remove = '-qpa wayland-egl'

# EXTRA_OECONF_append = '--qpa=wayland'

EXTRA_OECONF += " \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/' \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/' \
    "

