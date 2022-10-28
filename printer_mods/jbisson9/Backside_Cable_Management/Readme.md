
# BackSide Cable Management

<img src="Images/Complete system.jpg" width="400px" />

This is alternative wiring management solution to current methods.  And it was fun to design :)  The idea was to terminate cable within the channel with microfit connectors for easy maintenance.  Guides are used underneath to secure the wiring.  An optional screw and heat set insert are used to secure the system in place if needed.

<img src="Images/View from Fan.jpg" width="400px" />

Note microfit connectors are pressure fit with specials retention jigs.

<img src="Images/View from BTT.jpg" width="400px" />

The BTT smart filament sensor fits into the printed part.  This is a remix from an unknown design listed on teamfdm.com (thanks!)

<img src="Images/View from Base.jpg" width="400px" />

The system makes use of the keystone skirt, normally for USB/Rasp Pi connections, but in this case two microfit connectors are pressure fit into the slots

## BOM
* 2x 5015 24v fans
* 1x M3x20 SCHS (DIN912)

## Printing

There are two sets of STLs. One with inbuild supports and one without (for those who trust their slicers autosupports). Tested with recommended settings for Voron parts: 4 perimeters, 5 tops/bottoms, 40% infill. Though it is possible to use less plastic to reduce weight of plastic parts: 3 perimeters, 3 tops bottoms, 15-25% infill. 
Both versions of STL were tested by printing and assembling !!!

<img src="Visual/Supp_removal.jpg" width="400px" />

## Assembly
First print out "Cut tool", check fans compatibility, if fit is acceptable remove fans top body part and cut lower part according to “Cut tool”. Insert fans into “Back piece” (adjust fit if needed by cutting additional plastic from lower fan body). Fans should hold firmly in back part. Close them with “front piece” and secure them using “logo piece” using m3x20 SCHS screw. 

<img src="Visual/Using_cut_tool_2.jpg" width="400px" />
<img src="Visual/Using_cut_tool_1.jpg" width="400px" />
<img src="Visual/Using_cut_tool_3.jpg" width="400px" />
<img src="Visual/Fans_in_place.jpg" width="400px" />

### Optional I: 
Cut excess wires and solder red to red black to black and additional wires of same color extend them up to your tool head connectors. 

<img src="Visual/Wiring.jpg" width="400px" />

### Optional II:
Print “Fan decoration” spirals as thin as possible. Model is 0.4mm height but personally suggest to lower to 0.1 or 0.05mm as weight of these parts is enough to make vibrations on fans (which can be felt and most probably will introduce artefacts on prints. Other suggestion is to use “fan decoration” to make stencil sticker and using white paint make decoration.

## Performance

These two hands came from model https://www.thingiverse.com/thing:4892173 . They are printed both in Devils Design white PLA. Visible part was directed towards bed, thus it was total overhang printed on supports with interface layers. Cooling was directed with stock Afterburners hotend shroud. Personally believe that better results can be achieved with Warbird hotend shroud. 

<img src="Visual/comparison.jpg" width="400px" />

If you're feeling lucky !!!! 
there is CAD model of first adaptation for ABBN 30 hotend shroud. Not tested IRL.
