This is my config for the Voron Trident based on Duet 6HC. 

This configuration is for a 350mm standard configuration.

If you have any questions - ping me on Voron discord, on social media or anywhere else you can find me. In this firmware the Klicky Probe and the tool length sensor are integrated.
Also I have commented out the tool length sensor because for my applications it is not needed. To re-activate the tool length sensor you have to change homez.g and homeall.g. Just un-commente the following line:
;M98 P"toollength.g"

Also double-check the position of the tool length sensor. Mine is:
G1 X... Y...
in the toollength.g-file. You can find this file under system-toollength.g.

This is a config that will work on RRF 3.4 - probably on different versions as well but I have not tested that.

I use the following start- and end-gcode in SuperSlicer:
Start-Gcode:
```
set global.bed_temp = <temp here> 
set global.hotend_temp = <temp heree>
M98 P"0:/macros/Print/Print start"
```
End-Gcode:
```
M98 P"0:/macros/Print/Print end" 
```

I tried to visualise my wiring below:
![](./Pictures/Wiring.png)