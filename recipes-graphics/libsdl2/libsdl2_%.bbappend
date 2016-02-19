DEPENDS += "wayland virtual/egl libxkbcommon"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " file://wayland-egl.patch"

EXTRA_OECONF += " --enable-video-wayland"
