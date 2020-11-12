# Installing BetterBootLoader

First and foremost, I would like to thank Arksine for this great tool. When I installed BetterBootLoader I thought it was a lot more complicated, partly because I was unable to find any detailed installation instructions, especially on how to flash Klipper through USB. So I have decided to write this very short step-by-step installation instructionsin the hope it might help somebody installing this excellent tool in the future.

**A word of warning:** This potentially can brick (soft-brick) your SKRs if something goes wrong. If you have the propper programming tool, you might be able to reflash the original firmware back to the SKRs, but most of us won't have these. Be careful!

BetterBootLoader is a replacement to the stock firmware of the SKR or, for that matter, any LPC17xx-Board. The most important difference to the original firmware is that it allows installing Klipper on the SKR from the Pi through the USB connection without physical access to the SKR's SD card.

## Prerequisites
This guide is written with a VoronDesign v2 printer in mind, which usually has two SKRs as controllers, but it will also work for other printers. A Klipper environment that is set up and configured to operate properly is assumed. After going through this guide you will be able to flash new Klipper versions to your SKRs without accessing the SD cards.

Things you need to prepare:
- Turn off your printer
- Get access to the SD cards of your SKRs (for the last time, hopefully!)


## Installing

It does not matter if you do both SKRs at the same time or if you do them one at a time.

Download betterbootloader.bin (only this one file) from the [latest release](https://github.com/Arksine/LPC17xx-DFU-Bootloader/releases).
Copy the just downloaded betterbootloader.bin to the root directory of your SKRs' SD cards and rename them to "firmware.bin". Leave the "firmware.cur" file in there if it exists.

Put the SD cards back into your SKRs and power your printer. Leave it powered for about 10 seconds. Then cut the power again. Do not cut it earlier, you might risk soft-bricking your SKR. You can now flip your printer back into a upright position. After all LEDs have turned off, power your printer back up.

Connect to the Raspberry Pi in your printer through SSH.

Go to your Klipper directory and update it

```bash
cd ~/klipper
git pull
```

After that, remove any existing binaries or compiled object files and recompile. This can be done with:

```bash
make clean
make
```

My two SKRs are accessible through the following paths:
```
/dev/serial/by-path/platform-3f980000.usb-usb-0:1.3:1.0
/dev/serial/by-path/platform-3f980000.usb-usb-0:1.5:1.0
```

Take note of your paths, because they are needed in the following last step of the install, flashing Klipper through USB. This can be done with these commands:

```bash
make flash FLASH_DEVICE=/dev/serial/by-path/platform-3f980000.usb-usb-0:1.3:1.0
make flash FLASH_DEVICE=/dev/serial/by-path/platform-3f980000.usb-usb-0:1.5:1.0
```

Make sure to replace the paths with those of your SKRs, if they are different.
In the future you will be able to update klipper on your SKRs with the procedure shown above, starting from the part where you enter and update your local Klipper git repository.

Have fun and enjoy!

-kage-chan
