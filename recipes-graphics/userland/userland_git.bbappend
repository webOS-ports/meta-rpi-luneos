DEPENDS += "wayland"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
 file://egl.pc \
 file://glesv2.pc \
 file://bcm_host.pc \
 file://0001-wayland-support.patch \
 file://buildme.patch \
 file://dependencies.patch \
"

EXTRA_OECMAKE += "-DBUILD_WAYLAND=1"

PACKAGECONFIG += "wayland"

do_install_append() {
    install -d ${D}${libdir}/pkgconfig
    install -m 0644 ${WORKDIR}/egl.pc ${D}${libdir}/pkgconfig/
    install -m 0644 ${WORKDIR}/glesv2.pc ${D}${libdir}/pkgconfig/
    install -m 0644 ${WORKDIR}/bcm_host.pc ${D}${libdir}/pkgconfig/
}

FILES_${PN}_append = "\
 ${libdir}/pkgconfig \
"

FILES_${PN}-dbg += "${libdir}/.debug"

FILES_${PN}-dev += " \
 ${libdir}/libEGL.so \
 ${libdir}/libGLESv2.so \
"
