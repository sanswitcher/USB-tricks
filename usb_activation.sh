#!/bin/bash -x
insmod /lib/modules/default/kernel/drivers/usb/core/usbcore.ko
insmod /lib/modules/default/kernel/drivers/usb/host/hcd-driver.ko
insmod /lib/modules/default/kernel/drivers/usb/storage/usb-storage.ko
sleep 10
lsmod | grep usb
/bin/mknod -m 660 /dev/sda b 8 0
/bin/mknod -m 660 /dev/sda1 b 8 1
/bin/mknod -m 660 /dev/sda2 b 8 2 