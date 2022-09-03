# S4_Filament_motion_sensor [中文说明](./Readme_CN.MD)

## Objectives

### This project originated from[# VORON M4 Extruder](https://github.com/VoronDesign/Mobius-Extruder)，Thank Voron team to facilitate these great project.

#### The objectives for this project are:

 - When the  filament is exhausted or plugged, pause printing to avoid failed printing.
 - Easy to manual feeding when refueling.



## Overall

### Picture
### M4 vs S4

![图片](Photos/Overview.jpg)

### Video
 https://youtu.be/hLCMO_uFqfs
 
### [3D 模型](./3D)
 https://evercraft.co/share?key=0AD7E8


## Bill of Materials (BOM)
|NO.	|Category	|Part Name	|Qty	|Remark
|--|--|--|--|--|
|1	|Motion	|Shaft 5x48mm  D	|X1	|Option A*
|2	|Motion	|Shaft 3x20mm	|X1|	
|3	|Motion	|Bondtech Drive gear	|X1	
|4	|Motion	|F695 2RS	|X2	
|5	|Motion	|EASUN ECAS04 v3	|X1	
|6	|Fasteners	|M3x30 SHCS	|X4	
|7	|Fasteners	|M3x16 BHCS	|X1	
|8	|Fasteners	|M3X6 BHCS	|X2	
|9	|Fasteners	|M3 Spacer	|X4	
|10	|Fasteners	|M3 Threaded Insert M3x4x5	|X6	
|11	|Misc	|Magnet 3x6mm	|X2	
|12	|Misc	|PTFE Tube (4mm OD 3mm ID) 14mm	|X1	
|13	|Misc	|PTFE Tube (4mm OD 3mm ID) 11.5mm	|X1	
|14	|Electronics	|[Optical Endstop Module](https://www.amazon.com/Optical-Endstop-Photoelectric-Control-Printer/dp/B07MFT8NWJ)	|X1|
|15	|Motion	|Shaft 5x54mm	|X1	|OptionB*
|16	|Motion	|GT2 20T 5mm	|X1	|OptionB*
|17	|Fasteners	|M3X8 BHCS	|X5	|OptionB*
|18	|Fasteners	|M5X12 BHCS	|X2	|Option

*Two types:
Type A - without GT2 20T Pulley 
Type B - With GT2 20T Pulley 
![BOM](Photos/Bom.png)

## Briefly instructions
### Optical Endstop Module
![Pin](Photos/Pin.PNG)

## Config



### [filament_motion_sensor][¶](https://www.klipper3d.org/Config_Reference.html#filament_motion_sensor "Permanent link")

Filament Motion Sensor. Support for filament insert and runout detection using an encoder that toggles the output pin during filament movement through the sensor.

See the  [command reference](https://www.klipper3d.org/G-Codes.html#filament_switch_sensor)  for more information.

#### Copy below config to your <Printer.cfg>，you must need to check the **“switch_pin:”** 
```ini
[filament_motion_sensor S4]
detection_length: 7.0
#   The minimum length of filament pulled through the sensor to trigger
#   a state change on the switch_pin
#   Default is 7 mm.
extruder: extruder
#   The name of the extruder section this sensor is associated with.
#   This parameter must be provided.
switch_pin:
#   The pin on which the switch is connected. This parameter must be
#   provided.
pause_on_runout: True
#   When set to True, a PAUSE will execute immediately after a runout
#   is detected. Note that if pause_on_runout is False and the
#   runout_gcode is omitted then runout detection is disabled. Default
#   is True.
#runout_gcode:
    #RESPOND TYPE=error MSG="Filament Runout!"   #respond a warning message 
##   Need enable the "M118" and "RESPOND" extended commands first. 
##   More infomation ：https://www.klipper3d.org/G-Codes.html?h=respond#respond
    #Bee_Mario_B                                 #Make a warning tone
    #M117 Filament Runout!                       #Sent a message to LCD
#   A list of G-Code commands to execute after a filament 
# runout is detected. If pause_on_runout is set to True this G-Code 
# will run after the PAUSE is complete. The default is not to 
# run any G-Code commands.
#insert_gcode:
#   A list of G-Code commands to execute after a filament insert is detected.
# The default is not to run any G-Code commands,  
# which disables insert detection.
#event_delay: 3.0
#   The minimum amount of time in seconds to delay between events.
#   Events triggered during this time period will be silently
#   ignored. The default is 3 seconds.
pause_delay: 0.5
#   The amount of time to delay, in seconds, between the pause command
#   dispatch and execution of the runout_gcode. It may be useful to
#   increase this delay if OctoPrint exhibits strange pause behavior.
#   Default is 0.5 seconds.
```


#### Below config is optional, unless you want make a tone when detected a runout.

1. Copy **<[Beeper.cfg](/Config/Beeper)>** to the config folder 

open <[Beeper.cfg](/Config/Beeper)> check the **pin:** of  **[output_pin BEEPER_pin]**

2.  Copy below config to your **<Printer.cfg>** 
```ini
[include Beeper.cfg] 
```
3. Uncomment the **runout_gcode:** of **[filament_motion_sensor S4]**in **<Printer.cfg>**



