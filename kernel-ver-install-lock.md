# Installing and locking a kernel version manually
It's quite annoying to automatically install new kernel versions every time you update the system, which often come
with significant changes to it.

Therefore, manually installing the kernel version of your choice is a great option. Additionally, you need to tell GRUB
to use this version on boot.

## Procedure
**1. Download and install your kernel of choice**

`mkdir ~/Downloads/kernel`

`cd ~/Downloads/kernel`

`koji download-build --arch=x86_64 kernel-X.X.X-X.fcXX` (replace X with the chosen version)

`sudo dnf install ./kernel-*`

**2. Set default boot entry**
Check your default kernel:

`sudo grubby --default-kernel`

Change the default kernel version to one of your choice:

`sudo grubby --set-default /boot/vmlinuz-X.X.X-X.fcXX.x86_64`

**ALL DONE!** :)
