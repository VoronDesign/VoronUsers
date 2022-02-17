# Motor Cover Roomba HEPA Exhaust Filter

I modified the exhaust filter mod created by [DaGrooch13](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/DaGrooch13/Tophat_Exhaust_Filter) to mount onto the back of the Voron V0.1 instead of attaching to the Tophat. 

This covers the hole in the back of the chamber since I didn't install the back cover over the electronics. This mount also makes it easy to remove the tophat without needing to unplug the fan.

I made a video tutorial: https://youtu.be/uV1IgC7IFgs

# Images
<img src="/printer_mods/JJShankles/Motor_Cover_HEPA_Exhaust_Filter/Images/Left View.JPG" width="700">


I shortened the Charcoal Chamber from the original, but it still hold several sheets in there, while not sticking out too much.
<img src="/printer_mods/JJShankles/Motor_Cover_HEPA_Exhaust_Filter/Images/Top View.JPG" width="700">

<img src="/printer_mods/JJShankles/Motor_Cover_HEPA_Exhaust_Filter/Images/Right View.JPG" width="700">

<img src="/printer_mods/JJShankles/Motor_Cover_HEPA_Exhaust_Filter/Images/Inside View.JPG" width="700">

# BOM
* 4x M3x6 screws
* 8x M3x10 screws
* 4x M3x35 screws
* 16x Heat set inserts
* [Solder Extractor Carbon Sheets](https://amzn.to/3GVGInN)
* [Roomba HEPA Filter](https://amzn.to/3rY7jwz)
* [24V 60x60x25mm fan](https://amzn.to/34Ha9NH)

# Klipper config and Wiring

I connected the wire to Fan connector 3 on the SKR PICO board. 

I added this section into my printer.cfg file:
```
[fan_generic exhaust_fan]
pin: gpio20
max_power: 1.0
shutdown_speed: 0
kick_start_time: 0.5
```

In my START_PRINT Macro I added this line to run the fan at 30% during a print.
```
    SET_FAN_SPEED fan=exhaust_fan SPEED=0.3
```

In my END_PRINT Macro I added these lines at the end to run the exhaust fan for two minutes to clear out any fumes still in the chamber.
```
    SET_FAN_SPEED fan=exhaust_fan SPEED=1.0
    G4 P60000
    G4 P60000
    G4 P60000
    SET_FAN_SPEED fan=exhaust_fan SPEED=0.0
```
 
 
