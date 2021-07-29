EXTRA_OECONF:remove:rpi = "-qpa wayland-egl"

EXTRA_OECONF:append:rpi = " --qpa=wayland"

EXTRA_OECONF:append:rpi = " \
    '-I${STAGING_INCDIR}/interface/vcos/pthreads/' \
    '-I${STAGING_INCDIR}/interface/vmcs_host/linux/' \
"
