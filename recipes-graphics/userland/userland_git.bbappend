FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
 file://egl.pc \
 file://glesv2.pc \
 file://vchiq.sh \
"

do_install_append() {
    install -d ${D}${libdir}/pkgconfig
    install -m 0644 ${WORKDIR}/egl.pc ${D}${libdir}/pkgconfig/
    install -m 0644 ${WORKDIR}/glesv2.pc ${D}${libdir}/pkgconfig/

    install -d ${D}/${sysconfdir}/init.d
    install -m 0755 ${WORKDIR}/vchiq.sh ${D}${sysconfdir}/init.d/
}

FILES_${PN} += "\
 ${libdir}/pkgconfig \
"
