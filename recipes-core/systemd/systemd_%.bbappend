# use systemd to manage networks
# See http://www.freedesktop.org/software/systemd/man/systemd.network.html

PACKAGECONFIG_append_rpi = " networkd resolved"

FILESEXTRAPATHS_prepend_rpi := "${THISDIR}/files:"

SRC_URI_append_rpi = " \
    file://eth.network \
"

FILES_${PN}_append_rpi = "${sysconfdir}/systemd/network/*"

do_install_append_rpi() {
    install -d ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/systemd/network/
}

USERADD_PARAM_${PN}_rpi = "--system --home /dev/null systemd-journal-gateway"
