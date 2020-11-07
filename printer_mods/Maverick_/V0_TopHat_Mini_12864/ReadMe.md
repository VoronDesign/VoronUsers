# V0 TopHat Mini 12864

I wanted to have the ability to use the V2 display with my V0, so designed this mod to allow for it. Although they look similar, the Mini 12864 front and back case files have been slightly altered to accomodate this design.

## Config for SKR Mini E3 V2

Below are the pins that I used in Klipper for the display and a really bad representation of the wiring I performed.

[display]
lcd_type: uc1701
cs_pin: PB9
a0_pin: PB8
rst_pin: PB15
encoder_pins: ^PB5,^PA15
click_pin: ^!PA10
contrast: 63

spi_software_sclk_pin: PA5
spi_software_mosi_pin: PA7
spi_software_miso_pin: PA6


[neopixel fysetc_mini12864]
pin: PA9
chain_count: 3
color_order_GRB: False
initial_RED: 0.3
initial_GREEN: 0.3
initial_BLUE: 0.5



## Mount It!

M3 threaded inserts are used in the lower wall of the back case file, this allows for M3 screws to be ran through the TopHat pieces into the case, resulting in a solid configuration. 

The parts are in the correct orientation for printing.

![TopHat Mini 12864 1](https://github.com/Maverick-3D/VoronUsers/blob/master/printer_mods/Maverick_/V0_TopHat_Mini_12864/Images/TopHat_Mini_12864_Front.jpg)

