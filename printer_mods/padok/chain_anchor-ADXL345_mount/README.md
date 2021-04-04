# Chain Anchor - ADXL345 mount Mod

![Chain Anchor](../../padok/chain_anchor-ADXL345_mount/img/VORON2_v2.4_Assembly_-_Chain_Anchor_-_IGUS.png)

Recently I started exploring the input shaper feature of klipper. Unfortunately I had to realize that it is not so easy to attach the ADXL345 in such a way that useful measurements can be collected.
Therefore, I have created this mod, some drawings are of course still WIP but I think I have reached a stage where it is useful to get feedback.

## Construction

I downloaded the CAD files of the Afterburner hotend and searched for a suitable place to put the ADXL345 adapter board. I found the Chain Anchor on the backside, which offered exactly the right amount of space for my purpose.

![Chain Anchor](../../padok/chain_anchor-ADXL345_mount/img/VORON2_v2.4_Assembly_1.png)


I printed the part like all other parts on my printer with eSUN ABS+ Black/PeekGreen, but this one unfortunately got a little bit overextrusion.
After I added the threaded inserts, I sanded the plateau with some P180 Sandpaper that I laid on a flat surface, to ensure the best possible contact surface for the adapter board.

![Chain Anchor](../../padok/chain_anchor-ADXL345_mount/img/IMG_01.jpg)

Afterwards you can use that board as an drop in replacement for the stock Chain Anchor.

![Chain Anchor](../../padok/chain_anchor-ADXL345_mount/img/IMG_06.jpg)

## BOM

| #   | Part                                               |
| --- | -------------------------------------------------- |
| /   | Afterburner: Chain Anchor Parts                    |
| 4   | M3 ruthex Threaded Insert                          |
| 2   | M3x8 Screw                                         |
| 1   | ADXL345 - Triple Axis Accelerometer Breakout board |
## Klipper config

```
#####################################################################
#  G Sensor definition
#####################################################################
[adxl345]
cs_pin: PIN_CS
spi_software_sclk_pin: PIN_SCLK
spi_software_mosi_pin: PIN_MOSI
spi_software_miso_pin: PIN_MISO
axes_map: x,z,-y
```

## Example data

![calibration_data_x](../../padok/chain_anchor-ADXL345_mount/img/calibration_data_x.png)

![calibration_data_y](../../padok/chain_anchor-ADXL345_mount/img/calibration_data_y.png)