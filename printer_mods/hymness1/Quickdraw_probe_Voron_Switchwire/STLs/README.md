The dock is best printed with adaptative layer height or a 0.1mm layer height.

Do take note that you'll lose 27mm on the X axis for a dock located at X250

The modded KeyBak mount with a D2F-5L (or any other microswitch of this size with a lever) can be use as a Z endstop. Support is integrated in the model and will need to be removed prior to screwing in the microswitch.

# Assembly guide

## Probe
1. Cut the middle pin from the D2F-5 and remove the lever if your model has one.
2. Insert the microswitch in the probe housing.
3. Insert the magnets in the probe housing. Magnets should be from opposite polarity. This should be a tight fit. If not, use a dab of superglue to secure the magnets.
4. Trim any excess of the microswitch pins so they sit flush with the magnets.
5. Screws in 2 (ferric) M2x12mm.

## Probe Drop-in Attachment
1. Crimp 2 20cm 24AWG wires with MicroFit3 Male pins and flatten the end (other pins might work too).
2. Insert the flattened crimped wires in the holes next to the magnets holes. This should be a tight fit. Pins should come out the underside quite a bit.
3. Insert the magnets in the magnet holes against the wire pins. Magnets should be of opposite polarity. A little dab of superglue at the bottom, and NOT touching the pins, goes a long way.
4. Fold the back pin so it rests into the groove.
5. Trim any excess pins so they sit flush with the magnets.
6. Mount the Drop-in Attachment in place of the probe on the Afterburner. You'll want to put the drop-in at the highest position, against the carriage. Crimp the other end of the wires and if you reuse the old probe connector (with 3 positions) on the wire loom, be sure to insert the wires in the signal and ground positions. You can disconnect the 24V probe wire from the MCU.

## Dock Arm
1. Insert 2 M3x5x4 threaded inserts.

## Dock
1. Insert 2 pairs of 6x3mm magnets. Polarity doesn't matter.
2. Screw in the dock to the dock arm using 2 M3x8mm.

## Modded KeyBak Mount (if you go with it)
1. Remove the integrated support and clean the surface if need be.
2. Insert 2 M3x5x4 threaded inserts as per the official Voron Switchwire Assembly Guide.
3. Solder 2 50cm of 24AWG wire on the outside pins.
4. Screw in a microswitch with lever towards the rear of the printer.

## Final assembly
1. Remove the right vertical rail lower end block and mount the Dock Arm in its place, against the rail, using 2 M5x12mm
2. Insert the Probe in the Dock. Adjust the M2 screws so they barely touch the dock magnets
3. If using the modded KeyBak Mount, replace the old one with this one. Connect wires from the microswitch to a signal and ground pins on the MCU (Z-probe connector on the SKR Mini E3 v2 would be a good place)
