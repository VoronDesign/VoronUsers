Mini Afterburner Pinda Probe Mount
==============================

A modified dragon toolhead cowling to mount a pinda (or superpinda, or vinda) probe to your VO.1! (Mosquito will come someday if I get this working). 

BOM
---

- 1x Some kind of Pinda probe. Looking for something that's about 8mm diameter. Ideally you'd get a superpinda or vinda probe, the temperature drift with a standard style pinda v2 probe is wild and makes it hard to use if you don't preheat your chamber (in addition to your bed and hotend!). 
- 1x M2x8 self tapping screw. Head is countersunk for a Flat Head style screw, but a BHCS should work too, there's clearance for it to stick out. 
- Everything else you'd need for a standard Dragon MiniAB toolhead. 


Instructions
------------

- Print the new toolhead
- Install it on your V0.1, I wired up the ground and signal pin to my z-endstop port and the 5v to the bltouch port on my skr mini e3 v2. 
- Install the pinda probe and tighten it down and follow the probe calibrate guide here: https://www.klipper3d.org/Probe_Calibrate.html
- My offsets wound up being x_offset: -30.7 and y_offset: -13, but you should double check on your own machine just to be safe!
- Using just the v2 style probe isn't the most consistent, I'd suggest using the relative reference index mode with the normal v0 endstop... still testing this!


Images
------
![CAD](Images/CAD1.png)
![CAD](Images/cad2.png)
![CAD](Images/cad3.png)

