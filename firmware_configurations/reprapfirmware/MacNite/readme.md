This is my config for the Voron Trident based on Duet 6HC. 

This configuration is for a 350mm standard configuration.

If you have any questions - ping me on Voron discord, on social media or anywhere else you can find me. In this firmware the Klicky Probe and the tool length sensor are integrated.
Also I have commented out the tool length sensor because for my applications it is not needed. To re-activate the tool length sensor you have to change homez.g and homeall.g. Just un-commente the following line:
;M98 P"toollength.g"

Also double-check the position of the tool length sensor. Mine is:
G1 X... Y...
in the toollength.g-file. You can find this file under system-toollength.g.

This is a config that will work on RRF 3.4 - probably on different versions as well but I have not tested that.

I use the following Start and End G-code in SuperSlicer:
Start G-code:
```
M104 T[current_extruder] S[first_layer_temperature]     ; set extruder temp
M140 S[first_layer_bed_temperature]                     ; set bed temp
G28                                                     ; home all axes
M190 S[first_layer_bed_temperature]                     ; wait for bed temp
M109 T[current_extruder] S[first_layer_temperature]     ; wait for extruder temp
G32                                                     ; call bed.g to align z-axis
G29                                                     ; run mesh bed compensation
```
End G-code:
```
M104 S0 T0; turn off hotend1
M140 S0; turn off bed
M106 S0; turn off fan
{if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+30, max_print_height)}{endif} ; Move bed down if possible
G1 X10
M84     ; disable motors
```
Before layer change G-code:
```
;[layer_z]
```

I tried to visualise my wiring below:
![](./Pictures/Wiring.png)
