The dock is best printed with adaptative layer height or a 0.1mm layer height.

Do take note that you'll lose 27mm on the X axis for a dock located at X250

# Assembly guide

## Probe
1. Cut the middle pin from the D2F-5 and remove the lever if your model has one.
2. Insert the microswitch in the probe housing.
3. Insert the magnets in the probe housing. Magnets should be from opposite polarity. This should be a tight fit, you might want to use adjustable pliers to help you do so, but beware of the microswitch in order to not damaging it. If it is not a tight fit, use a dab of superglue to secure the magnets.
4. Trim any excess of the microswitch pins so they sit flush with the magnets.
5. Screws in 2 (ferric) M2x12mm in the probe housing through the microswitch.

## Probe Drop-in Attachment
1. Crimp 2 20cm 24AWG wires with MicroFit3 Male pins and flatten the end using pliers (other pins might work too).
2. Insert the flattened crimped wires in the holes next to the magnets holes. This should be a tight fit. Pins should come out the underside quite a bit, with the crimps resting almost against the upperside of the printed piece.
3. Insert the magnets in the magnet holes against the wire pins. Magnets should be of opposite polarity. A little dab of superglue at the bottom, and NOT touching the pins, goes a long way. Again, adjustable pliers might be handy.
4. Fold the back pin so it rests into the groove.
5. Trim any excess pins so they sit flush with the magnets.
6. Mount the Drop-in Attachment in place of the probe on the Afterburner. You'll want to put the drop-in at the highest position, against the carriage, with the longer side towards the rear of the carriage. Crimp the other end of the wires and if you reuse the old probe connector (with 3 positions) on the wire loom, be sure to insert the wires in the signal and ground positions. You can disconnect the 24V probe wire from the MCU.

## Dock Arm
1. Insert 2 M3x5x4 threaded inserts.
2. Remove the integrated support and clean the surface if need be.
3. Solder 2 50cm of 24AWG wire on the outside pins of the microswitch.
4. Screw in the microswitch with lever towards the rear of the printer.

## Dock
1. Insert 2 pairs of 6x3mm magnets. Polarity doesn't matter.
2. Screw in the dock to the dock arm using 2 M3x8mm.

## Final assembly
1. Remove the right vertical rail lower end block and mount the Dock Arm in its place, against the rail, using 2 M5x12mm
2. Insert the Probe in the Dock. Adjust the Probe M2 screws so they barely touch the dock magnets
3. Connect wires from the Dock Arm microswitch to a signal and ground pins on the MCU (Z-probe connector on the SKR Mini E3 v2 would be a good place)
