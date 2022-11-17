# Creality toolhead for stealthburner.

Not recommended but a potential pathway for e3->switchwire conversions. It's recommended to have an all metal heatbreak, both for printing ABS and for a higher volumetric flow rate. A good quality bimetallic heatbreak can outperform a stock V6.

## Compatibility

This is derived from the Stealthburner RC1 STEP files and has been tested with Stealthburner RC1, if there are changes breaking toolhead compatibility after RC1 it will be updated.

This toolhead is also *mechanically compatible* with stealthburner beta and has received some testing with beta parts.

## Versions
The pneumatic coupler version is intended for a lined heatbreak and complicates maintenance, only use it if you absolutely need it, these parts have 'PC' in their name. These are pictured in magenta. I'm trying to provide a solution that requires the least amount of additional parts. 

<img src="img/pneumatic_coupler.jpg" alt="pneumatic coupler version" width=800/>

Otherwise use the parts without 'PC' in their name and rely on the toolhead to gently clamp the bowden tube. These are pictured in grey.

<img src="img/friction_coupler.jpg" alt="version without pneumatic coupler" width=400/>



I have a [version for AB-BN](https://github.com/strayr/voron-afterburner-ender3/tree/main/AA-BN-30_toolhead) of this that i have been using extensively.

## Use a V6 nozzle

The toolhead is optimised for v6/reprap nozzles, and this style of nozzle should be considered a requirement. There is less variance in length even amongst the cheap clones, but a genuine e3d or other high end nozzle is recommended. I have tested with genuine e3d 0.4mm nozzles, a reprap size Bondtech 0.6mm CHT nozzle and some 0.3 and 0.25mm clones of reasonable quality. 20mm stainless steel (or titanium) countersunk screws on the heater block are required, don't run without, this causes the heatbreak to telescope out of the heatsink in the event of a jam. Hardend steel conducts more heat and aluminium or brass screws absolutely will not work.

When assembled with a v6 nozzle you should have a setup that looks like this. There should be a gap between the hex head of the nozzle and the heater block, 1mm is plenty, you can go to 2mm if you feel the heatbreak needs more threads inside the heater block. 

<img src="img/v6_heater_position.png" width=800/>

The threads of the nozzle should not be visible.

<img src="img/mk8_heater_position.png" width=800/>

## Nozzle position

The specified position for the nozzle is 61.5mm from the flat surface at the top of the toolhead. All other dimension are derived from this, and the distance between nozzle tip and duct may be different for other toolheads. On this toolhead the clearance distance is 2.37mm from the tip of the nozzle to the lowest point on the duct as shown. You can check with an allen key set by setting the nozzle height to the bed and lifting the toolhead 0.1mm (or less) at a time until a 2.5mm allen key fits under the duct. It is to be expected that nozzles and heatbreaks might differ in length slightly so +/- 0.2mm should be well within spec.

<img src="img/nozzle_position.png" width=800/>

## Extra Materials
* 2x standard 5mm heatset inserts (two extra)
* 2x M3x18 SHCS
* 2x M3x20 countersunk stainless steel screws for the heater block

## Assemble as per photos and stealthburner manual

<img src="img/E3_toolhead_open.jpg" width=800/>

<img src="img/E3_toolhead_rear.jpg" width=800/>

<img src="img/in_use.jpg" width=800/>

## Updates

- ### 2020-09-11
    - RC1 compatibility note
- ### 2020-09-08
    - Better arranged assembly, pneumatic coupler version is now a separate assembly rather than timeline trickery
    - single step for both versions
    - removed a tiny artefact as spotted by newphreak
- ### 2020-09-04
    - no spaces in filenames
    - STEP available
    - pneumatic coupler version available
    - clarified nozzle position and reference plane with wile.e
    - (compatibility) cutouts made to fit inductive probes without recessed screw heads, thanks Jason.  <img src="img/probe_cutout.png">
    - (printability) cutout for heatbreak setscrew is now a a straight-sided slot not a matching hole
    - (printability) heatsink to toohead back mounting screws are no longer through holes, rear cutouts now print neatly. <img src="img/improved_printability.png">

## Contact 
* [my github](https://github.com/strayr/strealthburner_creality_edition)
* strayr on voron discord 