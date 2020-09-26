# Using Linux on the Dell Venue 8 Pro (3845) Tablet

In this repo you can find some workarounds and tweaks for different Linux OSs on the **Dell Venue 8 Pro (3845)** Tablet, to make them tablet friendly and usable on a low-end tablet like the DV8P.

I want to use this tablet for fairly simple tasks: Browse the internet, watch movies, listen to music and maybe use it at the uni during lectures. This implies several apps, which I want to use: Firefox, VLC, <music app name here>, Xournal/Xournal++ and a separate pdf-reader.

I have tried and compared several OSs with new kernels (>5.0), so below you can find out about which one would suit your needs best. All OSs were 64-bit except for Manjaro Xfce.

GNOME surely would be the best interface for touchscreen-devices, but it uses too much RAM, which this tablet doesn't have.. Therefore I tried to stay away from GNOME and mainly focused on Fedora.

# DV8P Specs
- **CPU**: Intel Atom Z3735G; Quad-core 1.33-1.83GHz; 2MB cache; 64-bit supported
- **GPU**: Intel HD integrated graphics (Bay Trail)
- **RAM**: 1 GB (911.6 MB) DDR3L SDRAM
- **Display**: 8” IPS, 1280x800, multi-touch
- **Comms**: Wifi 802.11b/g/n, Bluetooth 4.0, MicroUSB, 3.5 mm audio jack
- **Storage**: 32 GB (30.1 GB) eMMC, MicroSD-Slot for up to 64 GB extra space

# Androidx86 9.0r1
## Installation:
To boot and install from USB, it needs an extra EFI partition with the bootloader (bootia32.efi and grub). Installation itself is uncomplicated if the USB is partitioned correctly.

## Things that work OOTB: :+1:
- **Wifi**
- **Audio**
- **Brightness Adjustment**
- **Rotation**
- **Touch**

## Things that don't work OOTB: :-1:
- **Bluetooth**
- **Camera**
- **Battery Power Management**
- **Automatic Brightness Adjustment**

## Overall impression:
First of all, I tested the [Android x86](https://www.android-x86.org/) project, which worked quite well for 5-6 hours, but then started freezing randomly. I saw some hints on the net, that the problem might be with the google apps, but I have not investigated this matter any further. It may be useful to try the [x86 LineageOS Version](https://www.android-x86.org/releases/releasenote-cm-x86-14-1-r4.html). The Android environment is very touch-friendly and requires the least tweaking.

# Fedora 31/32 LXDE
## Installation:
Easy and fast: created a bootable USB with Fedora Media Writer, installation took ~24 min.

## Things that work OOTB: :+1:
- **Bluetooth**
- **Wifi**
- **Audio**
- **Touch**
- **Finger scrolling in folders**

## Things that don't work OOTB: :-1:
- **Camera**
- **Brightness Adjustment**
- **Automatic Brightness Adjustment**
- **Rotation**
- **Battery Power Management**

## Overall Impression:
The most lightweight OS in this list. Fastest on this tablet, so I'm going to stick with it. Requires a lot of configuration though to make it touch-friendly. There is a great guide for the [Openbox configuration](https://urukrama.wordpress.com/openbox-guide/#Configuring), other tweaks can be found in this directory.

## Problems and Solutions:
- Automatic headphones detection doesn’t work (plugging into audio jack doesn’t trigger audio output to switch to headphones). It seems that the speakers and the headphones port are recognized as one output.. I have tried to alter `~/.config/pulse/default.pa` with the `module-switch-on-connect`, but to no avail.
- No rightclick without a mouse :point_right: `xbindkeys` & `xdotool` to use doubletap on the homebutton as rightclick
- Doubleclick is messy and gets locked up sometimes :point_right: press (& hold) homebutton to reverse the effect
- Logging in without a physical keyboard is only possible if the user password is disabled or if you use a different Login Greeter.
- Great themes: [Numix Circle Light icon theme](https://github.com/numixproject/numix-icon-theme-circle), [Dark Party](https://www.box-look.org/p/1281850/)
- `iio-sensor-proxy` quirk to enable automatic rotation stopped working after kernel update (>5.2) :point_right: use two custom scripts instead to rotate display and touchscreen into landscape or portrait mode
- Xournal++ needs to be configured for touch use first (using a mouse) :point_right: `Edit > Preferences > Touchscreen > Enable GTK Touch (workaround)`. Still not ideal though, the menu is laggy. Xournal works better on touch, but has less functions.

# Fedora 31 LXQt
## Installation:
Same as above - easy and fast: created a bootable USB with Fedora Media Writer, installation took ~24 min.

## Things that work OOTB: :+1:
- **Wifi**
- **Audio**
- **Brightness Adjustment**
- **Touch**

## Things that don't work OOTB: :-1:
- **Bluetooth**
- **Camera**
- **Automatic Brightness Adjustment**
- **Rotation**

## Overall impression:
The login greeter looks better than in LXDE and LXQt is overall user-friendlier OOTB (e. g. doubleclick works). However it still requires a big amount (comparable to LXDE) of tweaking to become touch-friendly.

# Fedora 31 Xfce
## Installation:
Create a bootable USB with Fedora Media Writer. Installation took ~26 min.
## Things that work OOTB: :+1:
- **Bluetooth**
- **Wifi**
- **Audio**
- **Brightness Adjustment**
- **Touch**

## Things that don't work OOTB: :-1:
- **Camera**
- **Automatic Brightness Adjustment**
- **Rotation**

## Overall impression:
OS consumes about 2-10% CPU and 64% RAM in idle mode - more than LXDE. Firefox is preinstalled. Lots of GUI settings.

# ElementaryOS 5.1 Hera (18.04.3 Ubuntu LTS)
## Installation:
Installation takes a lot of time - over 51 min.
## Things that work OOTB: :+1:
- **Bluetooth**
- **Wifi**
- **Audio**
- **Brightness Adjustment**
- **Rotation**
- **Touch**

## Things that don't work OOTB: :-1:
- **Camera**
- **Automatic Brightness Adjustment**

## Overall impression:
Overall performance is fine if not to many apps are opened at once, but F31LXDE is faster. Background apps consume ~100 MiB of memory when nothing else is running and you need to disable animations in Universal Access Settings.
Rotation works, but is off (needs a small adjustment to get it right). Wifi works, but is unstable (connection is randomly lost). I also experienced some audio problems - the input device (Microphone) wasn't located, and the output device could not be determined; volume buttons didn’t work as well.

# Ubuntu MATE 19.04 Minimal
## Installation:
Just extract the ISO to a FAT32-formatted USB and add a **bootia32.efi** to `EFI/boot/`. Otherwise its easy and fast.
## Things that work OOTB: :+1:
- **Bluetooth**
- **Wifi**
- **Audio**
- **Brightness Adjustment**
- **Touch**

## Things that don't work OOTB: :-1:
- **Camera**
- **Automatic Brightness Adjustment**
- **Rotation**

## Overall impression:
LightDM login greeter, Firefox and Onboard preinstalled. Onboard works on the login screen unlike with the Fedora flavours.
Use MATE Tweaks to set the Panel to **Cupertine** (good for touch).

# Manjaro Xfce 32-bit 18.0.4 Illyria
## Installation:
The 64-bit OS needs bootia32.efi to work. I was only able to test the Live-USB version, since the installation wasn't possible:
> System does not have enough working memory. At least 1 GB required.

## Things that work OOTB: :+1:
- **Wifi**
- **Audio**
- **Touch**

## Things that don't work OOTB: :-1:
- **Bluetooth**
- **Camera**
- **Brightness Adjustment**
- **Rotation**

## Overall impression:
Good looks, touch-friendly (big icons, touch-scrolling and doubleclick work OOTB). LightDM greeter preinstalled. Also some Microsoft stuff (Office, Skype). Quite a bit slower than Fedora LXDE.
