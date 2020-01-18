What is it?
- A custom energy chain for x/y and z axis meant to be used for Voron 2.2
- First release: give it a try and let me know if you encounter any problems!

What is not:
- an identical replacement for IGUS chain E2i.10.10.018 on XY-axis
- ...nor for the E2.15.10.028 IGUS chain on Z-axis
- a component tested regarding wire protection: no tests have been carried out yet
- a chain with seperate compartments for wire organization

When to use?
- you like to print your own stuff :-)
- you like accessible/openable links for easy maintenance
- you prefer accent colors (see folder 'themes' for ideas)
- you want save some money (it´s not a lot! Go for Igus if in doubt or some alternative cheap Ali-stuff)
- you don´t want to wait for your order to arrive
- you don´t like tape chains (wire failure) or zip chains (fiddly)
- you don´t care about
  o extreme noise reduction
  o a not perfect bending radius
  o or any other shortcomings due to additive manifacturing
 
Printing Requirements & Assembly:
- DO A TEST PRINT OF 3-4 LINKS FIRST AND CHECK FOR LAYER ADHESION
- esun ABS+
- 0.2mm layer height incl. first layer: part is designed to be printed only with this height!
- at least 2 links per print for cooling time or slower speed
- good layer adhesion for thin walls (print slower with higher temp if necessary)
- no supports: required supports are already incorporated and easy to remove
  o remove supports by bending the support upwards
- check your slicer preview: all walls need to be filled 100%: no gaps allowed.
- tested at roughly 40mm/s print speed (innerand outer shells) --> if in doubt: go slower 25-30mm/s should work fine!

Required Links/Clips:
- "A"x Links for X or Y-Direction: You need 17 links for a Voron 250mm plus three additional links per 50mm for X and the same amount for Y
  o 250 mm²: 17 links
  o 300 mm²: 20 links
  o 350 mm²: 23 links
- 'B'x Links for Z Direction:
  o 250 mm²: 22 links (option solid vertical: 14 )
  o 250 mm²: 25 links (option solid vertical: 15 )
  o 250 mm²: 28 links (option solid vertical: 16 )
- you will need Clips C = 2*A+B 
- please print 2-3 additional links and clips just to make sure

Please provide feedback via discord:
Slidr#4412
#landofschnitzel-DE

--------------------------------------------------------------------------------
UPDATES
--------------------------------------------------------------------------------

2020-01-18: first release
- added solid vertical z-chain for common Voron sizes
- decreased XY-chain end hole diameter to be tight enough for screws

2020-01-15: PreRelease 4
- Tweaked some Tolerances for easyer print (chain is a little wobblier now, but should resolve several issues)
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
- Slightly increased Hole Diameter to reduce layer seperation due to forcing pegs into the holes
- Added proper ends based of Voron zip chain