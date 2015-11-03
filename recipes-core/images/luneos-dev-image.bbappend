# Include modules in rootfs
IMAGE_INSTALL += " \
	kernel-modules \
	"

KERNEL_DEVICETREE += " \
    overlays/rpi-ft5406-overlay.dtb \
"

