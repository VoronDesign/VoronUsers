# Voron 2.2-2.4 Precision A/B Drive System (reduction gear and strengthened frames)

### Overview
This is actually 2 mods in one.  The first mod increases resolution and torque of the AB drives.  The second mod inverts and strenghtens the ab drive frames. you can do either mod independently, they do not rely on each other.  If you are going to do them both, do them at the same time as they both require gantry dissasembly.


IMPORTANT NOTE for 2.4:  This mod was designed to fit with the 2.2 sized extrusions.  For a Voron 2.2 the back extrusion measures 40 mm shorter than the back extrusion in a Voron 2.4.  
You can do this mod on a 2.4, but you will have to either buy a new extrusion which is shorter or cut the one you have.  I suggest buying a new one, so you can go back to the 2.4 drives at will.

### Drive reduction
![AB Drive reduction](reduction_overview.jpg?raw=true)

In the Voron 2.2, the A and B drives have a closed belt that drives the driveshaft which powers the xy gantry movement.  In the spec 2.2, all 3 pulleys are 20T pulleys. 
This means the torque at the open belt is equal to the torque at the stepper motor, and the step size is (2mm pitch * 20 Teeth)/(200 steps * 16 microsteps)=0.0125 mm/microsteps

In this mod we are replacing 2 of these pulleys with 16 tooth pulleys.  We replace the one on the stepper and the one that drives the open belt.  This gives us a step size of (2mm*16)/250 steps *16 micro)0.008 mm/step
the 16:20:16 reduction gear increases the torque at normal print speeds. This affect tapers off at higher speeds because our stepper is running at a higher RPM compared to the spec drive.

### Frame strengthening and inverting.
I took this opportunity to also strengthen the ab drive frames which had begin to crack at the extrusions on my 2.2. I also inverted the drives to put the spinny bits in view.

**Disclaimer:
It is your printer.  If you do this and something breaks, it is fully your responsibility.  I take no responsibility.**
### Materials needed
* Spec Voron 2.2 or 2.4
* 4 GT2 16T pulleys 6mm wide, 5mm bore
* 4 new printed frame parts (this mod)
* (for 2.4 only) a new extrusion 40 mm shorter than your back extrusion


### Procedure:
0. Print the new frames at Voron print specifications (ABS, 40% 0.2 layer height)
1. Remove the old AB drives and dissasemble
2. Assemble using the new frames and 16T gears as shown
3. Modify ab stepsize in firmware
4. Recommission printer


### Assembly
It is important to get the 16 tooth gears and the 20 tooth gears in the right locations. The stepper and the gear that contacts the open belt on the driveshaft are 16 tooth.  The gear connecting the closed 110 mm loop to the shaft is still a 20 tooth.

### Firmware (klipper)
In your printer.cfg you must make this change:
[stepper_x]
...
step_distance: **0.008 ##for gear reduction drive**

...
[stepper_y]
...
step_distance: **0.008 ##for gear reduction drive**


I cannot recall if you have to reverse the direction pins or not.  in my current working config, they are reversed.
[stepper_x]
...
dir_pin: !P2.6 #this is for a skr 1.4 pro using 2209 drivers. your pin and dir may vary


[stepper_y]
...
dir_pin: !P0.20 #this is for a skr 1.4 pro using 2209 drivers. your pin and dir may vary


### Recommission
Treat this printer like its just been built, because its a new printer.  It is very easy to accidentally pull a wire or drop a connection
* Go slowly. 
* Verify the steppers with stepper_buzz. 
* Carefully home the xy. if they move in the wrong direction, stop the printer.
* Check gantry alignment.
* Retension the belts.
* Enjoy!