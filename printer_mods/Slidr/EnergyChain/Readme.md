[1](themes/Example_3.jpg)

--------------------------------------------------------------------------------
What is it?
--------------------------------------------------------------------------------
- A custom energy chain for x/y and z axis meant to be used for Voron 2.2
- First release: give it a try and let me know if you encounter any problems!
- sometimes called 'PanzerChain'

--------------------------------------------------------------------------------
What is not:
--------------------------------------------------------------------------------
- an identical replacement for IGUS chain E2i.10.10.018 on XY-axis
- ...nor for the E2.15.10.028 IGUS chain on Z-axis
- a component tested for wire protection: no tests have been carried out yet
- a chain with seperate compartments for wire organization

--------------------------------------------------------------------------------
When to use?
--------------------------------------------------------------------------------
- you like to print your own stuff :-)
- you like accessible/openable links for easy maintenance
- you prefer accent colors (see folder 'themes' for ideas)
- you want save some money (it´s not a lot! Go for Igus if in doubt or some
  alternative cheap Ali-stuff)
- you don´t want to wait for your order to arrive
- you don´t like tape chains (wire failure) or zip chains (fiddly)
- you don´t care about
  o extreme noise reduction
  o a not perfect bending radius
  o or any other shortcomings due to additive manifacturing

--------------------------------------------------------------------------------
Printing Requirements:
--------------------------------------------------------------------------------
- Do A TEST PRINT OF 3-4 XY-LINKS PER TOLERANCE FIRST
  o CHECK FOR LAYER ADHESION
  o CHECK which tolerance version fits your printer filament/temperature best:
     XY_Link_tight_xA: might have upwards bending
     XY_Link_normal_xA: should be pretty flat (should work for most ppl!)
     XY_Link_loose_xA: should bend downwards

     If really necessary you might combine the versions in an alternating way:
     (e.g.: normal,loose,normal,loose and so on).
- esun ABS+ (feel free to experiment, don´t blame me!)
- 0.2mm layer height incl. first layer:
  part is designed to be printed only with this height!
- no supports: required supports are already incorporated and easy to remove

--------------------------------------------------------------------------------
Printing Tipps:
--------------------------------------------------------------------------------
- check your slicer preview: all walls need to be filled as much as possible:
  no gaps allowed.
- tested at roughly 40mm/s - 60mm/s print speed (innerand outer shells)
  --> if in doubt: go slower 25-30mm/s should work fine!
- at least 2 links per print for cooling time or slower speed
- good layer adhesion: print slower and/or with higher temp if necessary

--------------------------------------------------------------------------------
Assembly:
--------------------------------------------------------------------------------
- remove supports by bending the support UPWARDS. This is important, as it
  influences downwards bending of chain
- pinch the male link side with the pegs into the female side of the next link
- snap the links together without using the link clips. else the assembly
  is too stiff


Required Links/Clips:
- "A"x Links for X or Y-Direction:
  You need 17 links for a Voron 250mm plus three additional links per 50mm
  for X and the same amount for Y
  o 250 mm²: 17 links + spare
  o 300 mm²: 20 links + spare
  o 350 mm²: 23 links + spare
- 'B'x Links for Z Direction:
  o 250 mm²: 22 links (option solid vertical: 14 )
  o 300 mm²: 25 links (option solid vertical: 15 )
  o 350 mm²: 28 links (option solid vertical: 16 )
- you will need Clips C = 2*A+B + spare
- please print 2-3 spare links and clips just to make sure

Please provide feedback via discord:
Slidr#4412
#landofschnitzel-DE

--------------------------------------------------------------------------------
UPDATES
--------------------------------------------------------------------------------
2020-01-24: release 3 (on github soonish)
- added XY-Link tolerances: XY_Link_TOL_xA where
  TOL = loose (chain should bend downwards)
  TOL = normal (chain should be pretty straight)
  TOL = tight (chain bends upwards, previously default)
- added explanation picture for XY-Link tolerance

2020-01-19: release 2 (not on github)
- reduced some tolerances of pegs
- tested at 60mm/s printspeed: Fine on Voron 2.1
- moved all supports below rounds at bed 0.1mm to the part for better
  surface quality and less sagging
- minor readme correction
- naming correction at z chain: mixed up 'frame' / 'gantry'

2020-01-18: release 1 on github (not yet approved)
- added solid vertical z-chain for common Voron sizes
- decreased XY-chain end hole diameter to be tight enough for screws

2020-01-15: PreRelease 4
- Tweaked some Tolerances for easyer print (chain is a little wobblier now,
  but should resolve several issues)
- Added thicker outer walls (increases footprint, but still smaller chan zipchain)
- Planned for PreRelease5 (hopefully the last one before release):
  o Z: Solid Vertical Part

2020-01-14: PreRelease 3
- Added Z-Chain (Link, Connection to Frame and Gantry)
- Added Subfolders for Clarity
- Renamed Files with XY/Z/XYZ-Prefix depending on Purpose

2020-01-11: PreRelease 2b
- Fixed an error with extrusion_anchor

2020-01-11: PreRelease 2
- Added more supports to reduce inaccuracy due to sagging
- Corrected Bending Radius: more like to be 18 instead of 19mm
- Slightly increased Hole Diameter to reduce layer seperation due to
  forcing pegs into the holes
- Added proper ends based of Voron zip chain