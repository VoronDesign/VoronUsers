# Misaligned Rail Tools

### Overview

In the initial Afterburner beta, I found that I had an inconsistent first layer height which I could not fix with bed_mesh or QGL.  I suspected a twisted x extrusion. I found it is possible to *very slightly* misalign the x rails to produce an apparent extrusion twist, and I was able to fix it using simple tools and a few printed parts.
 
The [Dozuki article](https://voron.dozuki.com/Guide/possible+misalignment+of+rails+causing+apparent+twist./67?lang=en) goes into a lot more detail, but here you will find the broad strokes and the tools I used.

I take no responsibility for anything happening to you, your printer, or anything else should you follow what I did.

### The Issue
![The Issue](https://d17kynu4zpq5hy.cloudfront.net/igi/voron/EXLBlot4OXW1qxYG.medium)
This diagram shows what I think is going on. In the AB beta, you align and install the front rail, then align the bottom rail to it.
If the front rail is slightly misaligned higher on the left/lower on the right (black arrows), it will pull up on the carriage (blue arrow pointing up) when moved to the left (green arrow). The bottom rail is constrained in that direction, so it moves forward(red arrow).

It is the combination of the blue and red arrows which cause the apparent twist, tilting the carriage away from the build plane. Quad_Gantry_Level can and does correct for a single rail misalign (such as on a V2.2) but once there are 2 rails perpendicular to each other, they impart twist which QGL cannot fix.

From my measuremetns I was approx. **0.07mm higher on left than on the right**. Over the length of the rail, this can impart a twist of approx 0.4 degrees.  At the nozzle I had a variance of **.12mm** in layer height over approx 150mm

### Requirements
* metal ruler/light
* Dial indicator (1 inch travel, .001 resolution)
* Printed Dial Indicator adapter (this mod)
* Printed adjuster assembly (this mod)

If you do not have a dial indicator it may be possible to test for this using a zheight/paper gauge test. in this case you won't need the dial indicator stl, just the adjuster stls

### Detection
The [Dozuki article](https://voron.dozuki.com/Guide/possible+misalignment+of+rails+causing+apparent+twist./67?lang=en) has the detail here, but the general idea is to use either a dial indicator or paper test the nozzle height at different x locations.  Since we are at QGL, and assuming the bed is flat, there should be little measured change.


### The Fix (**Dangerous**)

Assemble the "adjuster" like so:
![Adjuster](https://d17kynu4zpq5hy.cloudfront.net/igi/voron/YSBFjrSOPFHqJDLI.standard)

**DO NOT INSTALL YET DANGER! If you install this and then do a home, bad things will happen as the adjuster will hit the stepper long before the y switch activates.  be very very careful when this is installed.**
![danger](https://d17kynu4zpq5hy.cloudfront.net/igi/voron/CsHScsMUpErmHXnF.medium) **RAMMING SPEED!**

Aligning Front rail:
1. QGL and home the printer.  Move the printer into a position where you can access the screws in both rails.
2. Loosen the bottom rail entirely
3. move carriage to the right hand side of your flat area. lower z to ~20 mm or so.
4. Loosen all screws on the front rail to the left of your flat area (rail to extrusion screws are circled in green here).  Leave the nearest screw to the right (circled in red) tight, and loosen all the other screws to the right.  the single screw will hold the rail and allow it to pivot.

![pivot](https://d17kynu4zpq5hy.cloudfront.net/igi/voron/LSMRCNyNExMEB2g3.medium)

5. Install the dial indicator and rotate dial to indicate 0 (ALT: do a paper test to determine nozzle height)
6. Install rail adjuster as close to the left xy joint as you can:
![installed](https://d17kynu4zpq5hy.cloudfront.net/igi/voron/hvXDQsmTA6XiFUk3.standard)

**IMPORTANT NOTE: be very careful at high values of y when the adjuster is on.

7. Jog axis to left.  after you pass a screw in the front rail, do the following:
	a. turn adjuster screws on the rail adjuster until the dial indicator reads 0.
	b. tigthen rail screw
8. Repeat until you have moved as far left as you can without hitting the adjuster.  Secure the final screw.

9. Done? Jog X back to max if the dial indicator stays within 1-2 thou, that should be fine (the bed isn't perfect either)  If not repeat 4-8 

10.**REMOVE ADJUSTER and DIAL Indicator**


Once this rail is aligned, you can align the bottom rail per the 2.4 or afterburner procedure.
 






