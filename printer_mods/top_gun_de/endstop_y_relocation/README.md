# Y endstop relocation for Voron V2.4, Voron Trident

I installed a CAN-toolboard on my V2.4 and replaced the chains with an umbilical. This mod relocates the Y endstop to the A-motor (rear right), so I can remove the chain on my Y extrusion.

Any standard size microswitch endstop with a latch will work, like Omron D2F-L or compatibles. 

Installation:

Assembly from below to see how parts fit together:
![Image 3](Images/Bottom-side-assembled.png)

Bracket:
  - Solder wires to the microswitch. Use the outer two pins, the middle one is unused.
  - Fasten the microswitch into the bracket with 2 M2x10 self-tapping screws.
  - Remove the front M3x30 screws that thread from the top of the motor housing down to the stepper motor.
  - Install the bracket on top of the motor housing with two new M3x35 fasteners. The bracket is adjustable, I recommend to mount it flush with the front end of the motor housing as a starting point.

Bumper:
  - Replace the old cable bridge with the bumper. The fastener stays the same.


Test and alignment:

Manually run your gantry to the rear. You should hear a "click" right before the gantry hits the rear wall. If you don't hear a click, adjust the bracket toward the front until it clicks.

If your bumper can't reach the endstop, there is a version of the bumper that is 1mm longer, "Bumper-xl.stl".

In Mainsail, check if your endstop is triggered when the gantry is at the back, and not triggered when you pull it to the front again.


Front view:
![Image 2](Images/Photo-installed.jpg)


