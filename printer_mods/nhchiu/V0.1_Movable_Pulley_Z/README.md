# V0.1 Movable Pulley Z Drive Mod

![Thumbnail](Images/Img.png)

There already are belt-driven mods like [theFPVGeek's V0 Z Belt mod](https://github.com/theFPVgeek/VoronUsers/tree/master/printer_mods/theFPVgeek/v0-zbelt-mod) and [MathematicalPotato's adapted version for V0.1](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/MathematicalPotato/v0.1_belted_z_drive). This is my attempt to combine the timing belt with a movable pulley system.

- M4-like driving gear(1:4) with movable pulley on Z bed(1:2), resulting in a 1:8 speed ratio, provides higher torque and step resolution. The bed doesn't drop when the Z motor is disabled.
- Using a NEMA14 stepper motor (no tight restriction in length) provides another path for V0 to V0.1 upgrade by reusing the Z motor.

## BOM (Some can be obtained from the original setup)

### Fasteners

- 1 x M2x10 Self Tapping Screw
- 11 x M3x8 BHCS
- 2 x M3x10 BHCS
- 4 x M3x12 BHCS
- 5 x M3x16 BHCS
- 2 x M3x20 BHCS
- 3 x M3 Washer
- 2 x M3 Threaded Insert
- 4 x M3 Hex Nut
- 3 x M5x20 BHCS/SHCS
- 3 x M5 Hex Nut
- 1 x M5 Washer (about 1mm thick, doesn't have to be accurate)

### Motion

- 3 x GT2 20T Pulley (6mm wide / 5mm bore)
- 1 x GT2 Belt Loop (6mm wide) - 188mm
- GT2 Open Belt (6mm wide) - about 650mm
- 8 x F695 2RS Bearing
- 1 x 5x60mm Shaft
- 1 x NEMA14 Stepper Motor (LDO-35STH42-0504AH, others might also work)

## Mechanism

As shown in the following figure, the belt drive on the motor is a 20T:80T system.

The driven belt path with constant belt length is a movable pulley system with the two belt ends
fixed at the upper and lower parts of the frame.

![The Mechanism](./Images/Mechanism.png)

## Instructions

### Assembly of Each Component

Note the places that need threaded inserts. You can pre-apply them.

1. M4-like driving gear

   ![80T Gear](./Images/M4_80T_Gear.png)
   ![M4-like driving gear](./Images/M4.png)

   This is very similar to [Voron M4 extruder](https://vorondesign.com/voron_m4). Just mind the placement of the F695 bearings. You can refer to [Nero's video guide](https://www.youtube.com/watch?v=oTCxGellCQk) for details about assembling Voron M4.

   The `80T_gear_7mm.stl` provided is a thinner version of the [M4 toothed gear](https://github.com/VoronDesign/Mobius-Extruder/blob/master/STLs/%5Ba%5D_80t_gear.stl) with 7mm of tooth width instead of 9mm to save a little weight and space. Both should work here.

1. Bed Holder

   ![Bed Holder](./Images/Bed_Holder.png)

1. Top Idler

   ![Top Idler](./Images/Top_Idler.png)

1. Top Endstop Mount

   Use the stock Z endstop and the two M2 self tapping screws.
   ![Top Endstop Mount](./Images/Top_Endstop.png)

### Assembly

1. Preload 2 M3 nuts at the marked slot on page 32 of the manual.

   (Note: If you don't want to take the frame apart, it *can* be mounted without these two nuts but it may be less rigid. Don't tighten the belt too much then. NOT TESTED!)
![Preload nuts](./Images/Preload_Nuts.png)

1. Make a loop on one end of the belt and press it into the printed part. Then mount the printed part to the frame with 2 M3x8 screws.

   ![Lower End](./Images/Lower_End.png)

1. Mount each component to the frame (don't fully tighten up yet). There should be preloaded nuts if you followed the V0.1 manual. The two upper components and their nuts can be slid in from the top.

   ![Top mount](./Images/Top.png)

1. Route the belt path as shown in the [mechanism figure](#mechanism).

   The upper belt end should go through the `upper_belt_end.stl` as shown below.

   (Tip: Temporarily lower the upper idler to have enough belt length to get the belt end though the holder.)

   ![Top end holder](./Images/Top_Belt_End_Path.png)

2. Slightly adjust the position of each component so the bed holder is at the middle of the extrusion and the four marked segments of the belt are as parallel to the Z rails as possible.

   ![Belt Path](./Images/Belt_Path.png)

3. Belt tensioning.

   First mount the top endstop holder about 2-4mm lower from the top horizontal aluminum extrusion. Loosen the mounting screws and pull the excessive belt through the holder.

   Slightly tighten the mounting screws so the belts doesn't slip out while the endstop mount is still moveable. Pull the endstop holder upward to adjust the belt tension then fully tighten the mounting screws.

   ![Upper End](./Images/Top_Belt_End.png)

   (Note: As marked in the figure, the top idler mount and endstop mount should be about flush with the bottom of the horizontal aluminum extrusion. Make sure the mini-AB doesn't crash into the screw heads or printed parts.)

   ![Top Position](./Images/Top_Position.png)

### Klipper Settings

- Old format (1.8 degree motor and 16 microsteps):

```ini
[stepper_z]
step_distance: 0.0015625
```

- New format:

```ini
[stepper_z]
rotation_distance: 40
gear_ratio: 80:20, 2:1
```

## Photos

![Lower belt end](Images/img1.jpg)

![M4 drive](Images/img2.jpg)

![Top idler and endstop](Images/img3.jpg)

![Photo](Images/img4.jpg)

Here's a video of testing the bed motion:

[![Watch the video](https://img.youtube.com/vi/kQ-t7eGuI5I/maxresdefault.jpg)](https://youtu.be/kQ-t7eGuI5I)

## Changelog

### 2021-11-09

- Redesigned the Z endstop mount to hold the belt better (The previous version might get loose overtime).
- Change some dimensions slightly for stronger parts.

### 2021-08-26

- Initial release
