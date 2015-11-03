COMPATIBLE_MACHINE_raspberrypi2 = "raspberrypi2"

do_deploy_append() {
    if [ -n "${DTOVERLAY}" ]; then
        echo "dtoverlay=${DTOVERLAY}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
    if [ -n "${LCD_ROTATE}" ]; then
        echo "lcd_rotate=${LCD_ROTATE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
}
