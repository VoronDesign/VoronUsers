Carriage Assembly
============
**Carriage Assembly:**
- Magnets:
  - Sand the side of 2 m6x3 magnets. Place a magnet on a bigger stack of magnets then solder a piece of wire to the side as shown.
  - If you don’t have the magnet on the bigger stack, your magnet will lose some of its magnetic strength. I haven’t tested, but I think it’s probably ok because of the double stack with an unsoldered magnet.
![Magnet Soldered to Wire on Stack of Magnets](images/readme/printorientation.png)
  - Put superglue into the magnet holes.
  - Place the second magnet on top of the soldered magnet, and then press the two magnets into the hole so the unsoldered magnet is out. The magnets should be “proud” of the carriage.
  - I use a flat surface to press the magnets in and then lap them so they mate well with the mag probe.
  - Note, previously, attaching the magnets by pinching the wires was thought to be ok.  After further testing, the "wire pinch" method of attaching the wires to the magnets is no longer recommended due to failures of the connection over time.
![Assembled Carriage from Bottom](images/readme/printorientation.png)
- Misc Notes
  - Adjust the tilt of your magprobe by screwing in and out the m3x6 button head screw on the bottom of the carriage.
  - Do not forget to put superglue into the holes in the carriage prior to putting in the magnets.
  - Hole on left side of carriage is for ADXL mounting. (Thanks @Koonweee)
- Heatsets
  - As shown on front and top. There will be an extra hole on top/right. This extra hole is currently unused and is present to allow for mods.  

**MGN9 Carriage Notes:**
- Notes
  - Mounting Mantis with a single MGN9 carriage is possible. I am currently testing this with a Robotdigg 440 SUS MGN9 rail. So far, I am not noticing any loss in quality after switching from MGN12 using the same slicer profile. However, your results may vary depending on the quality of your linear rail.
  - For a Voron 300, MGN12 is 278g. MGN9 is 157g, which will help during Y-axis moves. 
  - Is it better than mgn12? I haven’t tested long enough to know. I will eventually ramp speeds and see.
- Printing and Assembly
  - The MGN9 carriage is tricky to get to print perfectly due to some steep overhangs. However, if these overhangs do not come out well, it should not affect the functionality of the part. The overhangs are part of the belt path, so as long as the belt goes through from the back to the front, you’ll be ok.
  - The belts are clamped using makerbeam T-nuts (see the V0.1 BOM for these)
  - You can use up to m3x8mm or m3x10mm SHCS or BHCS with the T-nuts.
  - m3x10mm nuts will make threading the belts easier.
  - I used openbuild T-nuts (because I had them around) and dremeled them narrower
  - m3x8mm bolts to attach carriage to MGN9.
  - Make sure the carriage is straight while tightening. If your carriage is tilted, using Auto-Z calibration will give inconsistent results. If you need to adjust the tile, note that you can loosen the carriage bolts without loosening the belts
![Carriage with Heatsets](images/readme/printorientation.png)
![Carriage rear](images/print_orientation_mgn9_rear_thumb.png)
![Carriage side](images/readme/printorientation.png)
