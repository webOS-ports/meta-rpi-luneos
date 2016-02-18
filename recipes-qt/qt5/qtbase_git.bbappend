FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# EGL and GLES2
SRC_URI_append = "\
 file://0001-fix-rasp-build.patch \
"

EXTRA_OECONF += " \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/' \
    '-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/' \
    "

