**Mantis Dual 5015 Toolhead by Long** 
![](images/mantis.jpg)  
![](images/images.jpg)  
Please see the ([readme.pdf]readme.pdf)

([His results here](https://fayly.voron.dev/index.php/apps/files/?dir=/Voron-Open-Projects/AfterBurner%20Optimization/Badnoobs%20AB%20Data&fileid=17492))


**Printing:**  
Make sure your slicer keeps the wall that is circled.  Please use a 0.4mm nozzle for this print.
See the print orientation picture.  
**Make sure that your slicer keeps the circled divider in the duct outlet**
![](https://fayly.voron.dev/index.php/core/preview?fileId=35585&x=2560&y=1600&a=true)
Print the Front Mount with very low infill.  It isn't structural and can save a few grams here.
There are 4 heatsets in the mount. Two on the front for 4010 fan mounting. Two on the rear for the standard mount. One heatset to the arm on the duct to mount the 5015 fan. The duct attaches to the mount with m3x8.  



**Fan Selection:**  
I recommend the Delta 24v 5015, [Sunon 5015 5.4 cfm fan](https://www.digikey.com/short/zrwpw9) or a GDSTime 5015 fan.  The winsinn fan blows significantly less air and is louder.  

**Design Concept:**  
The airflow design of this duct is utilizing a forward to back flow. The flows meet at an angle at the nozzle, combine then exhaust more cleanly backwards away from the print bed and the print.  With a cleaner exhaust, I believe that there will be less cooling of the bed and earlier layers, resulting in less warping of the print.  

**Longs Fang CFD 1.36i3b43**  
This duct has been optimized for airflow design and mass flow with many, many CFDs.  
![](https://fayly.voron.dev/index.php/core/preview?fileId=35577&x=2560&y=1600&a=true)

![](https://fayly.voron.dev/index.php/core/preview?fileId=43224&x=2560&y=1600&a=true)

**8-way Overhang Test**  
This is done with PLA and is more realistic to every day printing because the layer has a little more time to cool.  All of these were done with the side panels on and the front open.  

This set was printed with a **0.4mm** nozzle at 200c.  
(hmm looks like I lost this image)

This set was printed with a **0.6mm** nozzle and Dragon normal flow.  The left one was was printed at 190c and the right one was printed at 200c.  This test is quite a bit harder with a 0.6mm nozzle than 0.4mm.  
![](https://fayly.voron.dev/index.php/core/preview?fileId=57509&x=2560&y=1600&a=true)
![](https://fayly.voron.dev/index.php/core/preview?fileId=57500&x=2560&y=1600&a=true)

**ABS 50-150mm Bridging Print**  
NOTE these are ABS Bridges!
![](https://fayly.voron.dev/index.php/core/preview?fileId=35699&x=2560&y=1600&a=true)
![](https://fayly.voron.dev/index.php/core/preview?fileId=35691&x=2560&y=1600&a=true)
**ABS 160mm Bridging Test:**  
[Bridging Test Video in action](https://www.youtube.com/watch?v=jcgmpLg1aaE)  
Note this is ABS!  

**Single Overhang Test**  
This is done with PLA and is the most difficult test I've found.  Because it has a long, diving board like feature, any slight curling of corners compounds during the print.  Once the print starts curling, the hotend will push down on the print and cause the print to bend upwards.  If it's really bad, then it will pull the vertex of the print off the bed.  Then of course there's the drooping and feathering of the corners.  
The Ender 3 with petsfang and a winsinn 5015 printed this like a champ on its first try.  The test printed with sharp corners and basically printed in thin air all the way up to 80 degrees overhang just with my default profile.  My duct is close, but still lacks a bit of the crispness of the corners that the ender has.  
![](https://fayly.voron.dev/index.php/core/preview?fileId=36429&x=2560&y=1600&a=true)
  
**Front to Back Flow Water Bowl Test.**  
Note this is an earlier version of the duct.  This shows how the airflow exhausts backwards.  
[1.36g Water Bowl Test Video (front to back flow)](https://www.youtube.com/watch?v=J4byv68tgz8)  

**Melting Ducts:**  
With forward to back flow, the duct outlets are more forward and allow for much more space around the block for heat to exhaust.  I believe this will help with the issue of melting ducts.  As of me writing this readme, I have printed over 100 hrs on this duct and have not seen any melting at all.  
![](https://fayly.voron.dev/index.php/core/preview?fileId=35994&x=2560&y=1600&a=true)

**Upper Plenum:**
This duct uses an upper plenum to balance flow between the two arms.  This was dead simple to design and works very well to balance flow.  In my tests, I had less losses using a plenum versus splitting the air, but this is probably because i am using less vertical space between the 4010 hotend fan and 5015 (no cutting of the 5015 blower).  

**4010 inlet:**  
I was testing more restricted duct with a central divider and noticed that with a central divider, the airflow tended to congregate in the blue circles.  
![](https://fayly.voron.dev/index.php/core/preview?fileId=35929&x=2560&y=1600&a=true)

I hypothesized that if i made an "S" shaped divider (purple lines) it would direct the air more efficiently over the heatbreak.  This design ended up working well.  Badnoob further refined this divider for an even better result!  ([His results here](https://fayly.voron.dev/index.php/apps/files/?dir=/Voron-Open-Projects/AfterBurner%20Optimization/Badnoobs%20AB%20Data&fileid=17492)).  With this style 4010 inlet, I have not heard of any heat creep issues yet. 
![](https://fayly.voron.dev/index.php/core/preview?fileId=35920&x=2560&y=1600&a=true)

  &nbsp;  
  &nbsp;  

**Advantages of forward to back flow over opposing flows**  
I believe forward to back flow has multiple advantages over flows that are opposing. When opposing flows collide, they tend to cancel out when they meet. I believe this creates a dead zone with high pressure so that the air from the ducts actually travels out and away from the the nozzle. The cooling will be the best away from the nozzle. Furthermore, the airflow will have a strong downward component, which may cool the bed and cause warping.

**Colliding flows cross section**  
Note the region of low flow right at the nozzle
![](https://fayly.voron.dev/index.php/core/preview?fileId=35559&x=2560&y=1600&a=true)

**Colliding flows particles**  
Note that this CFD doesn't have the block included, which would force the air sideways and downwards more.  
![](https://fayly.voron.dev/index.php/core/preview?fileId=35568&x=2560&y=1600&a=true)  

**Opposing Flows Water Bowl Test Video**  
This shows the strong downward component with opposing flows.  
[Water Bowl Test Video (opposing flows)](https://www.youtube.com/watch?v=l_91Pe5qC6Y)

  &nbsp;  
  &nbsp;  

