# V0 Kirigami bed front with space for LED

This is a modifaction of the V0 Kirigami front bed made by Kosh42EFG

![Bedfront](https://user-images.githubusercontent.com/62263528/154589228-073a1a1f-0118-4c81-ae40-8124b2f32eaf.jpg)

## BOM

- Kirigami bed: https://github.com/christophmuellerorg/voron_0_kirigami_bed
- 1x Kirigami_LED_Bed_Front.stl printed in ABS using standard Voron settings
- 1x Kirigami_LED_Bed_Front_defuser.stl printed in any white material
- 2x M3x8 CHCS
- 2x M3 nuts
- 1x LED.  I use a single neopixel mini button
- 4x wires for the neopixel (you can use three if this is the only one in the chain)

## Installation

- Install the kirigami bed
- Wire the neopixel and place in the slot with the wires coming out through the tunnel
- Add the defuser in front of the neopixel, make sure it is a tight fit to hold it well (print thicker if needed)
![Beddefuser2](https://user-images.githubusercontent.com/62263528/154589930-c60789e9-885c-4b87-a207-555da5d146f4.jpg)
- Fit the Kirigami_LED_Bed_Front.stl to the front of the kirigami bed using the M3 screws and nuts
- Add configuration change to the printer.cfg in klipper:
    - [neopixel my_leds]
    - pin: PA8
    - chain_count: 1
    - color_order: GRB
    - initial_RED: 1.0
    - initial_GREEN: 0.0
    - initial_BLUE: 0.0
