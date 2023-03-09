# Ultimate Z Chain Routing System for CAN bus

For all you CAN bus lovers out there, here's the goto method for cleaning up the cables that do not go to the toolhead.

<img src="Images/Ultimate_Z_chain_system.jpg" width="400px" />
<img src="Images/complete_system.jpg" width="400px" />

Note microfit connectors are pressure fit with specials retention jigs.

<img src="Images/Guides_and_Pressure_fit_connections.png" width="400px" />
<img src="Images/view_from_fan.jpg" width="400px" />

The BTT smart filament sensor fits into the printed part.  This is a remix from an unknown design listed on teamfdm.com (thanks!)

<img src="Images/view_from_BTT.jpg" width="400px" />

The system makes use of the keystone skirt, normally for USB/Rasp Pi connections, but in this case two microfit connectors are pressure fit into the slots

<img src="Images/view_from_base.jpg" width="400px" />

# Bill of Materials

- 2x M3 x 12mm SHCS
- 2x M3 heat set insert
- 3x M3 x 8mm BHCS
- 3x M3 Hammerhead T-Nuts
- 1x M5 x 10mm SHCS
- 1x M5 Hammerhead T-Nuts
- 1x 2-circuit microfit 3 connector
- 2x 4-circuit microfit 3 connector
- IGUS X/Y chain (23 links for 350, less for the smaller machines) and 1x end link
- 1x D2F-01L microswitch
- 2x M2 x 10mm self tapping
- tiewrap and heatshrink tubing

# Tools

- Multimeter to check for continuity
- Soldering iron for the heat inserts
- wire cutter
- wire stripper
- Molex microfit 3 crimping tools
- heat gun for the heatshrink tubing

# Printing

Uses standard Voron print profiles.  Supports not needed for any of the parts.  The cable plug and z chain cable mount can be printed in the accent color of your choice.

# Assembly

Attach the BTT sensor to the top channel piece with two M3 button head screws.  Create the wiring harnesses to attach the microfit connectors.  As an aside, all three ends are males connectors, unusual generally, but easier to build clam shells around them.  

<img src="Images/microfit_clam_shell.jpg" width="400px" />

Once the harness is built up, add the microfit clam shells and insert them into the channels.  They are pressure fit and tight.

<img src="Images/completed_assy.jpg" width="400px" />

Finished cabling should look like this.  Be sure to slide in the cable guide on the unit before attaching it to the frame.

<img src="Images/example_cabling.jpg" width="400px" />

Secure the entire unit to the frame with four M3x12 SHCS and T-Nuts.

# Optional

If you want to secure the entire system to the panel, use a heat set insert and backer.  The panel is only 3mm thick so you'll need something to secure the rest. 

<img src="Images/Optional_Screw_with_heat_set_insert.png" width="400px" />

All the best!
