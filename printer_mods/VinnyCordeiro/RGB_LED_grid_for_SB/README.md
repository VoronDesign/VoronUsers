# RGB LED grid for the Stealthburner (a.k.a. Rainbow Barf Logo LED)

![](IMG_2805.gif)

This PCB, created in KiCad 6.0, is a collaboration between me and [tanaes (a.k.a. whoppingpochard)](https://github.com/tanaes/whopping_Voron_mods/tree/main/LEDs/Rainbow_Barf_Logo_LED). It's a RBG 8× LED grid to be used on the logo of the Voron Stealthburner, to give the user more animation options than a single, boring RGB LED. 😁

Important note: this PCB uses 2.0mm × 2.0mm WS2812B RGB LEDs, they should not be used with RGBW LEDs in the same chain unless you know what are you doing, as they use different data protocols. The usage is possible, but it isn't straightforward. There is information that a workaround for mixing RGB and RGBW LEDs is being developed at the [Klipper-led_effect](https://github.com/julianschill/klipper-led_effect) repository, which is what whoppingpochard and I recommend for controlling this board.

### Updates

January 16th, 2022: Initial release.

February 18th, 2022: added link for whoppingpochard's Rainbow Barf's repository, and info about Klipper-led-effect developing a solution for mixing RGB and RGBW LEDs. There are little cosmetic differences between that version and the one I've uploaded here, nothing that will change the way it works. Choose whatever suits you better. 🙂

March 17th, 2022: added the KiCad version that was used to design the PCB.

May 6th, 2022: sligthly modified the PCB by removing both the data in resistor and the filtering capacitor. They are not strictly necessary, and the presence of the resistor was making people needing an additional resistor on their controller board's data pin to match impedance. Removing the board's resistor should solve that. There are also some cosmetic changes, and I slightly increased the area available for the power planes.
