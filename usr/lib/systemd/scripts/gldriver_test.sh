#!/bin/bash

if grep -s -q okay /proc/device-tree/soc/v3d@7ec00000/status \
                   /proc/device-tree/soc/firmwarekms@7e600000/status \
                   /proc/device-tree/v3dbus/v3d@7ec04000/status ||
   [ "$(arch)" == aarch64 ]; then
	if [ -e /usr/share/X11/xorg.conf.d/99-fbturbo.conf ] ; then
		rm /usr/share/X11/xorg.conf.d/99-fbturbo.conf
	fi
else
	if ! [ -e /usr/share/X11/xorg.conf.d/99-fbturbo.conf ] ; then
		cat > /usr/share/X11/xorg.conf.d/99-fbturbo.conf << EOF
# This is a minimal sample config file, which can be copied to
# /etc/X11/xorg.conf in order to make the Xorg server pick up
# and load xf86-video-fbturbo driver installed in the system.
#
# When troubleshooting, check /var/log/Xorg.0.log for the debugging
# output and error messages.
#
# Run "man fbturbo" to get additional information about the extra
# configuration options for tuning the driver.

Section "Device"
        Identifier      "Allwinner A10/A13 FBDEV"
        Driver          "fbturbo"
        Option          "fbdev" "/dev/fb0"

        Option          "SwapbuffersWait" "true"
EndSection
EOF
	fi
fi

