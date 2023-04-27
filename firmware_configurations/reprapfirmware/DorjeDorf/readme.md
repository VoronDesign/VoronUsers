This is my config for the Voron 2.4 300mm based on Duet 6HC and 3HC. 

If you have any questions - ping me on voron discord. 

This is a config that will work on RRF 3.3 (I'm running RC3). Earlier ones might complain about how the probe are configured (two speeds probing was introduced in 3.3).

Code needed in slicer to start printing is: 

```
set global.bed_temp = <temp here> 
set global.hotend_temp = <temp heree>
M98 P"0:/macros/Print/Print start"
```

Code needed to end the print is:
  
```
M98 P"0:/macros/Print/Print end" 
```
