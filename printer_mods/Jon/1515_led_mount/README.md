# Snap in 1515 LED mount for WS2812B led strips.
<img src="IMG/print_finish.gif">

BOM:
- [WS2812BECO Black PCB - 5m 30 IP30](https://www.aliexpress.com/item/2036819167.html "aba")
- Some cables
- A soldering iron
- JST-XH Crimps


Print guide:

Print 9 normal and 9 mirrored.
I mixed 16 and 17mm because the spacing on these are not exactly what you'd call accurate.


Preparation:

I use 4 led's on each side. Solder the cables and add some heatshrink wrap the end. Probably a good idea to test and configure them first too, so you don't have to take it out again after you've mounted it.


Mounting:

Push one in, then slide the led strip into it and keep things in the back. Then keep adding one and one until finished. Et voila. Slide the cable over the back panel and into the electronics bay. Wire them in parallel and put them into the BTT SKR Mini E3 V2 neopixel slot.
<img src="IMG/wiring.jpg" width="250" height="250">


Klipper config:

```
[neopixel case_lights]
##  Chamber Lighting - In 5V-RGB Position
pin: PA8
chain_count: 4
initial_RED: 0
initial_GREEN: 0
initial_BLUE: 1
```

<img src="IMG/led_strip.jpg" width="825" height="461">


If this looks familiar contact me so i can credit you. This is based on some other 1515 mount. I just remade the rest. Heavily based on eddie's misumi holders.
