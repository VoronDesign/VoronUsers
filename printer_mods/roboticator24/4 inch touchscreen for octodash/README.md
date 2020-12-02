# 4-inch Touchscreen for OctoDash

## OctoDash

[OctoDash](https://unchartedbull.github.io/OctoDash/index.html) is a very cool dashboard / touchscreen UI for OctoPrint that simply installs on your Raspberry Pi. It is recommended to configure your Pi with auto-login to desktop and auto-launch the OctoDash app.

## Touchscreen and Cables

Octodash will work with almost any display attached to the Pi but I found this really nice [4-inch IPS touchscreen on AliExpress](https://www.aliexpress.com/item/4000329175443.html) that is perfectly suited - so I built a mount to integrate it into the V2.4 skirt as a drop-in replacement for the stock front panel. As such it should work on any size V2.4 (250/300/350) with the stock left- and right- front skirt pieces.

When buying the screen be sure to choose the "4-inch IPS screen for 3B" even if you are using a Raspberry Pi model 4B, because you will need the full-size HDMI adapter that comes with the 3B variant. 

For the HDMI cable to connect the screen to your Pi, if you have a Pi 4B you will want a Micro HDMI Male to Full size HDMI Female, 20-30cm long. These should be readily available on Amazon or AliExpress or eBay. Pi 3B requires Full size HDMI Male to Full size HDMI Female 20-30cm long.

You will also need a 26-40-way ribbon cable with Male IDC connector on one end and Female on the other to connect the screen to your Pi - this cable provides power and connectivity for the touchscreen. I found these for sale on eBay but you can get away with a 26-26 or 40-40 if you cannot find a 26-40, or relatively easily make one yourself if you just buy the loose parts.

## Screen Brightness Control

The touchscreen comes with a button that you can press to cycle around the screen brightness levels (10%-100%). In theory you only need to do this once because the screen remembers your setting even after power loss. However the button is inaccessible when mounted in the Voron skirt, so I incorporated a way to mount a cheap and commonly available 6mmx6mmx4.3mm push button [like this one](https://www.aliexpress.com/item/1005001308376742) in the skirt. You can get these from Amazon, AliExpress, eBay, etc. for around 1 cent/pence each.

## Complete BOM

* Touchscreen
* HDMI cable
* GPIO cable
* Push-button for brightness adjustment (Optional) and 2 x 8cm 24AWG wires
* Printed parts (see STL folder)
* 2 x M3x12mm bolts (ideally socket-head) 
* 2 x M5x10mm bolts (Button Head) and T-Nuts to attach to Voron

## Assembly Instructions

1. Print the STL files in the orientation provided. 3 walls and 40% infill is sufficient. You should ideally enable support (touching bed only) for the largest STL part.
1. Solder 8cm wires from the push button to bridge the existing button on the screen PCB
1. Insert the printed button extension and then the push button in the space provided
1. Attach the HDMI adapter and cable to the screen
1. Slide the screen into the printed mount and screw the 2 halves together with the M3 bolts
1. Attach the completed part to the Voron with M5x10mm BHCS bolts
1. Connect the HDMI and Ribbon cables to your Pi

## Gallery

