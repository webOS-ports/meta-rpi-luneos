COMPATIBLE_MACHINE_raspberrypi2 = "raspberrypi2"
COMPATIBLE_MACHINE_raspberrypi3 = "raspberrypi3"

do_deploy_append() {
    if [ -n "${DISABLE_SPLASH}" ]; then
        sed -i '/#disable_splash=/ c\disable_splash=${DISABLE_SPLASH}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
    if [ -n "${DTOVERLAY}" ]; then
        echo "dtoverlay=${DTOVERLAY}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
    if [ -n "${LCD_ROTATE}" ]; then
        echo "lcd_rotate=${LCD_ROTATE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
}
