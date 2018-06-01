EXTRA_OECONF_remove_rpi = "-qpa wayland-egl"

EXTRA_OECONF_append_rpi = " --qpa=wayland"

EXTRA_OECONF_append_rpi = " \
    '-I${STAGING_INCDIR}/interface/vcos/pthreads/' \
    '-I${STAGING_INCDIR}/interface/vmcs_host/linux/' \
"
