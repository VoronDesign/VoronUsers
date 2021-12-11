# More robust Voron Switchwire belt routing

This mod was created because the original stock parts didn't work well for me. 
The major part are the moded stepper cages. The stepper cages got tilted usually 
during tensioning and leading to the axle of the stepper not being parallel 
with the horizontal plane, which lead to yawning of the belt and increased wear 
and tear of the belt. Additionaly, the cages parts a and b had the tendency 
to open up in the bottom,  especially when the tensioning screw is one or two mm too long.

The modded version has a through-screw in the bottom and additional screw slot
on the top to attach it to the vertical extrusion, to help with proper leveling
of the stepper axle. You'd probably be able to address these issues without
if you were careful and knew about them. Using this design is just much faster.
![Stepper cages](images/motor_cage.png)

## Additional mods ##

The **xz blocks** have a slot for M5 button head screw that can be used to fix
tilting of the blocks w.r.t. the plane defined by the X gantry extrusion.
The original blocks have already some measures to prevent this, but apparently
those were not sufficient in my case (I was worried about tightening the screws
too much, as the plastic already started to give and yet there was still a bit of
tilting play). 
![XZ Blocks](images/xz_blocks.png)


The **upper xz** blocks/supports were modded just to help more carefuly define
in what position and orientation the blocks should stay. These have the least effect, IMO.
![Upper XZ blocks](images/upper_xz.png)

With these, I had printed almost 400 hours without any belt-related issues and 
the belts look still fresh, no signs of fraying.
There exist also similar unofficial mods on Voron discord addressing similar issues
but I think this is the most exhaustive version.

## Print Instructions

**Print Settings:** Standard Voron PIF sttings -- at least 40 percent infill, 4 perims, 5 solid layers top and bottom

**Quantities:** Quantities are noted in the filenames -- each part needs to be printed only in single copy.

## Installation
Install should be fairly straightforward, the naming of the parts should follow the original naming,
so you could follow the SW manual.
Few pictures
![Stepper cage 1](images/install_cage_a.jpg)
![Stepper cage 2](images/install_cage_b.jpg)
![Stepper cage 3 and XZ blocks](images/install_xz_blocks.jpg)
![Upper XZ blocks](images/install_upper_xz_blocks.jpg)
Please note that the last picture contains an old revision of the upper XZ block (that was
reducing the Z travel), but the provided version installs the same way and does not 
reduce the Z travel.
Generally speaking, I suggest tightening the screw attaching the stepper to the vertical extrusion
as a very last step. 

### Overal BOM
- 6x M5x10 BHCS
- 6x M5 T-Nut for 3030
- 2x M3x16 SHCS
- 2x M3 Threaded Insert (standard "Voron")

