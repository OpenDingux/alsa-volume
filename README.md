alsa-volume
===========

Small command line utilities to get and set ALSA mixer volume.

The getvolume utility was originally written by Yu-Jie Lin:
  http://code.google.com/p/yjl/source/browse/Miscellaneous/get-volume.c

It was adopted by OpenDingux to save the current volume setting on system shutdown. A setvolume utility was added to restore the volume on boot.

You can pass "default" as the device name in most cases. Typical control names are "PCM" or "Master"; these match the control names shown in alsamixer.

S90volume.sh is an example init script to save and restore volume. It was written for use in the BusyBox init system, but it should be easy to adapt to other script-based init systems.
