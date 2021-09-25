# WIP: ADXL345 GY-291/Adafruit Cable mount

**WARNING: Dupont connectors can foul with your z-chain when homing, solder wires directly or ensure you have clearance.**

![The damage](Images/TheDamage.jpg)

This is an in-development mod for mounting the ADXL permanently. It moves your drag chain up by 5.5mm on the motor.

![CAD](Images/CAD.png)

Check for clearance at the limits of movement

![Clearance](Images/Clearance.jpg)

![CAD-Adafruit](Images/CAD-Adafruit.png)

## Hardware

- ADXL345 GY-291 board (21mm by 16mm) or Adafruit board (1in by 0.8in)
- M3x6 BHCS
- M3 Nylon washer (optional)
- M3 Threaded Insert * 4 or 5 (IGUS or Generic)
- DO NOT USE dupont on the ADXL board, ensure you have clearance when homing using JST XH connectors or solder wires directly

## Ideas that didn't work

- Dupont connectors on the ADXL board are too tall and foul the drag chain when homing.
- Attempting to use the three motor mounts doesn't work. Using the top hole would interfere with the drag chain as it's closer to the motor than the bolt. Using the bottom hole fouls the drag chain when X approaches 0.
- Using M3x8 bolts on the board moves the board closer to the back risking fouling with JST-XH connectors - would probably be ok if soldering wires directly.
- Attempting to not move the drag chain mounting up the motor doesn't give clearance as X approaches 0 for the board, it's too close to the bottom of the motor.
- Flipping the drag chain mount so it's level with the top of the motor instead of moving it up just makes the radius of the drag chain tighter and more awkward to fit.