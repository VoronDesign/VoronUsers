# Snap in 1515 LED mount for WS2812B led strips.
<img src="IMG/print_finish.gif">

**BOM:**
- [WS2812BECO Black PCB - 5m 60 IP30](https://www.aliexpress.com/item/2036819167.html "aba")
- Some cables
- A soldering iron and some solder
- JST-XH Crimps
Notes about the WS2812: 30 leds per meter fits, but you will only have a led in every second diffuser. 60leds per meter is the perfect fit.


**Print guide:**

Print 9 left and 9 right.


**Preparation:**

I use 9 led's on each side. Solder the cables. Now is a good idea to functiontest it before you install it.


**Mounting:**

Slide the cables for the led strips over the back panel and into the electronics bay. Push one in, then slide the led strip into it and keep things in the back. Then keep adding one and one until finished. The last one is a little finicky as you have to partially enter the led strip and finagle it into position to clip in. Wire them in parallel and put them into the BTT SKR Mini E3 V2 neopixel slot.

<img src="IMG/wiring.jpg" width="250" height="250">


**Klipper config for BTT SKR Mini E3 V2:**

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
