I found a description how to format a USB-Stick that could be accessed by the brocade OS.

In fact after some investigation I noticed an error of this description that prevents to
access this special configured stick.

To make life easier I modified the /sbin/hotplug script by adding one line.
Now any USB-Stick may be used for installation or backup purposes.

The modified hotplug script adds the VENDOR string to /etc/fabos/usbstorage.conf if the vendor is unknown.
If you redo the "usbstorage -e" command the previously unknown Vendor stick is been recognized by hotplug
and the activation of the access succeeds!

It might be annoying to do the activation of a stick twice but this has to be done only if the vendor of the
usb-stick is new for your brocade switch.

Fabos is capable to handle VFAT32-formatted sticks.

I found a description on a HP-site that says that the FAT32-USB-Stick must have the following structure:

Root directory: /brocade/
four subdirectories in /brocade/
                                                        config/
                                                        firmware/
                                                        firmwarekey/
                                                        support/
