Voron V0 Z Belt mod using a M4 extruder as base.  Desiged to take advantage of the 4:1 gearing to prevent the belted Z from dropping when motors are powered off.

<b>NOTE:</b>  This is a beta release.  Still testing and some minor design changes may occurs.

<b>Design Goals and Notables</b>
1.  Created to be a drop in replacement of the V0 leadscrew with a minimum amount of disassembly
2.  Belt intensionally offset to the side to have the attached part of the bed mount close to center and to keep the endstop screw in the same stock location to retain the use of the stock Z-enstop
3.  Tried to design the bottom mount to utilize existing M3 nuts already in the 1515 extrusions and to provide the same amount of support and rigidity.  All four mounting points leveraged.
4.  Bed clamp was designed to be accesible with back panel in place allowing easier access if necessary

![Zbelt-Mod03](Images/V0_ZBelt-01.jpg)

# Klipper Stepper Settings:

  <b>Old format:</b>
step_distance: .003125

  <b>New format:</b>
rotation_distance: 10


# How to tighten Z-Belt:

# Step 1: 

Secure belt at the bed mount first - this <b><i>is not</b></i> the final belt tension.

<b>Tip:</b>  I found it easier to secure the bottom belt first using both screws, then remove the one longer screw that holds both clips, then secure the top.  Again this is not the final belt tension so don't worry about getting the tension correct at this step.  Final belt tension will be done at step 4.

![Zbelt-Step01](Images/z-step-01-1.jpg)


# Step 2:

Slightly loosen idler mount screws

![Zbelt-Step02](Images/z-step-02.jpg)


# Step 3: 

Push idler mount up to desired belt tension and hold.  

<b>NOTE:</b>  This is why it's important for your M5 screw not to protrude past the idler mount. This will allow you to move the idler mount upward clearing the 1515 extrusion allowing more belt tension.

![Zbelt-Step03](Images/z-step-03-2.jpg)


# Step 4:

While pushing up and when you have the belt tension how you want it, secure the top screw

![Zbelt-Step04](Images/z-step-04.jpg)


# Step 5:

Finally secure the bottom screw.  Yes, the bottom screw can still be access with the belt in the way.  The belt is flexible enough to move/bend over to access the bottom screw on the idler.  I use the ball end of a hex driver.

![Zbelt-Step05](Images/z-step-05.jpg)

# Alternative Idler
Alternatively you can use <b>@hartk V0.108</b> Idler which allows tensioning using a single screw at the top.  It's a very nice idler but you'll need to add some M3 nuts on the horizontal 1515 extrusion.  This can be done by either drilling out an access hole and hiding that hole behind his idler assembly or taking the frame apart slightly.  I opted the lazy route with mine LOL.


# Addtional Pics:

![Zbelt-Mod01](Images/V0_ZBelt-04.jpg)

![Zbelt-Mod02](Images/V0_ZBelt-02.jpg)

![Zbelt-Mod04](Images/V0_ZBelt-03.jpg)

![Zbelt-Mod05](Images/v0beltz01.jpg)

![Zbelt-Mod06](Images/v0beltz02.jpg)


