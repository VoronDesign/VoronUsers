The dock is best printed with adaptative layer height or a 0.1mm layer height.

The modified carriage can be found at Annex Engineering here : https://github.com/Annex-Engineering/Quickdraw_Probe/tree/main/XY_Carriages_for_Non-Annex_Printers/VORON_SW/Afterburner%2BMagnetic_Probe_X_Carriage

Do take note that you'll lose 27mm on the X axis for a dock located at X250

The modded KeyBak mount with a D2F-5L (or any other microswitch of this size with a lever) can be use as a Z endstop. Support is integrated in the model and will need to be removed prior to screwing in the microswitch.

# Assembly guide

## Modded carriage
1. Download and print the modded carriage from [Annex Engineering](https://github.com/Annex-Engineering/Quickdraw_Probe/tree/main/XY_Carriages_for_Non-Annex_Printers/VORON_SW/Afterburner%2BMagnetic_Probe_X_Carriage/STLs)
2. Follow the official Voron Switchwire Assembly Guide for the assembly of the carriage. It's basically the same.
3. Crimp 2 20cm 24AWG wires with MicroFit3 Female pins and flatten the end (other pins might work too)
4. Insert the flattened crimped wires in the holes next to the magnets holes. This should be a tight fit.
5. Insert 2 pairs of 6x3mm magnets in the magnet holes against the wire pins. Both pairs should be of opposite polarity. A little dab of superglue opposite to the wire pins goes a long way.
6. If any, trim the excess pins so they sit flush with the magnets (on the underside of the carriage)
7. Proceed with the assembly of the Afterburner as usual. Crimp the other end of the wires and if you reuse the old probe connector (with 3 positions), be sure to insert the wires in the signal and ground positions. You can disconnect the 24V probe wire from the MCU.

## Probe
1. Cut the middle pin from the D2F-5 and remove the lever if your model has one
2. Insert the microswitch in the probe housing
3. Insert the magnets in the probe housing. Magnets should be from opposite polarity. This should be a tight fit. If not, use a dab of superglue to secure the magnets.
4. Trim any excess of the microswitch pins so they sit flush with the magnets
5. Screws in 2 (ferric) M2x12mm

## Dock Arm
1. Insert 2 M3x5x4 threaded inserts

## Dock
1. Insert 2 pairs of 6x3mm magnets. Polarity doesn't matter.
2. Screw in the dock to the dock arm using 2 M3x8mm

## Modded KeyBak Mount (if you go with it)
1. Remove the integrated support and clean the surface if need be.
2. Insert 2 M3x5x4 threaded inserts as per the official Voron Switchwire Assembly Guide
3. Screw in a microswitch with lever towards the rear of the printer.

## Final assembly
1. Mount the Dock Arm on the right hand side vertical 3030 extrusion, just under the lower end block, using 2 M5x12mm
2. Insert the Probe in the Dock. Adjust the M2 screws so they barely touch the dock magnets
3. If using the modded KeyBak Mount, replace the old one with this one. Connect wires from the microswitch to a signal and ground pins on the MCU (Z-probe connector on the SKR Mini E3 v2 would be a good place)
