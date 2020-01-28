# What

This is a (generally up-to-date) dump of my own VORON V2 printer, using the stock Duet firmware. I use a Duet Ethernet and a Duex5 add-on board, and a PanelDue touch screen.

You can see how I make my backups with the included batch file.

I am sharing this config because it is useful to see real-world builds instead of simplistic samples. Use this as a starting point, or as a reference for your own config. Feel free to ask questions.

# Why

I just prefer RRF, that's all. If you are not sure, need support and don't want troubles, use the recommended firmware on your VORON (Klipper-based setup on SKR 1.3 boards).

Hopefully this is useful for you. If not, well, I tried. :)

# How

To adapt this to your machine, you will need to edit the config. Here's a walkthrough of what you need to change.

In /sys/config.g:
- Change the network name to match your printer (`M550`)
- Set the motor mappings to match your config (`M584`). This will vary depending on where you connected things on your build. I like to put the whole Z on Duex, so XYE stays on the Duet using their marked sockets.
- Set the microsteppings to match your motors (`M92`).
- Set the axis maxima to match your bed size (`M208`). Don't worry about axis minima for now.
- Set the drive directions to match your motors (`M569`). You can either invert the `S` parameter or flip the motor connector.
- Use `M564 H0` in the Console to enable movement before homing. You can also set it in `/sys/config.g` during initial setup. **_Be careful not to make unplanned moves while this command is in effect._**
- Move the carriage _by hand_ in the middle of the bed, ensure it can move without hitting anything. Double-check XY movements using small distances (< 5mm). +X should go to the right, +Y should go to the back. You can either change the `S` parameter of `M569` or physically reverse the motor plug, as you prefer. Do not disconnect motors while the board is powered. If both axes are reversed, you need to reverse both motors. If you can only get one of the two axes working in the correct direction, flip just one of them (it doesn't matter which), then check if you need to invert both axes again. 
- Check that the XY endstops work with `M119` in the Console. Each endstop will return its status. Press one by hand and issue `M119` again to see the change. Make sure both endstops work before continuing.
- You can isolate individual Z motors with `M584 Zx`, replacing `x` with the number of the Z motor you want to check. i.e. `M584 Z5`, `M584 Z6`, etc. With one motor isolated, move Z up/down a few mm, just enough to confirm the direction. Adjust the config as needed (`S` parameter of `M569`) and reboot between each attempt. **_Do not attempt to home with isolated Z motors, you will break your printer._**
- At this point you should be able to home X and Y separately from DWC (do not try full homing yet!). The gantry will rise a bit prior to moving each axis (you did fix your Z direction before, right?).
- Now that you can home XY, it is time to adjust your axis minima. Move the nozzle with DWC until it is aligned with the front left corner of the bed (which is supposed to be `X0 Y0`). Look at the XY coordinates shown in DWC, this is the number you need to subtract to the axis maxima you set before. Remember that these numbers describe the _physical movement limits of your printer, not your bed size_. Minima will be slightly negative and Maxima will be a tad bigger than your bed size, because the nozzle can move outside of the bed. The _slicer_ is responsible for keeping prints inside your bed size, not the printer.

To get Z homing to work, we have to start expanding into other files.
- Change `/macros/print_scripts/goto_bed_center.g` and change the `G1` to half your bed size (i.e. `G1 X125 Y125...` for a 250 build).
- By default, the inductive probe is active on powerup. Raise Z a bit (so the bed does not trigger it) and make sure you can read "0" in the Z-Probe display of DWC. Then put some metallic object under the probe to trigger it, you should see the probe light up and DWC change the Z-Probe display to "1000" shown in red. The inductive probe needs to be connected to the ZProbe input of the Duet, not an endstop. Invert the readings if necessary by editing `/macros/print_scripts/activate_z_probe.g` and changing the `I0` to `I1` on the `M558` command.
- If the Z-Probe display works in DWC and triggers when you put metal under the probe, you can home Z now. `G28` should work and home all three axes (both XY simultaneously, then move to the middle of the bed and home Z). **_Do not attempt to level the gantry yet._**

To get Z leveling to work:
- Run `/macros/print_scripts/activate_z_switch.g`. This will change the active Z "endstop" to the FSR rod at the back of the printer.
- Check that you see "0" in the Z-Probe display of DWC. Pressing the FSR rod should cause this number to change to "1000" shown in red. Invert the readings if necessary by editing `/macros/print_scripts/activate_z_switch.g` and changing the `I0` to `I1` on the `M558` command. If you can't get it to work, make sure the FSR is connected to the correct spot. I use the Z endstop on the Duet, if you used something else you will need to change the `P7` parameter of `M558` and the `T7` parameter of `G31`. _Both must match._
- Adjust `/macros/print_scripts/goto_z_switch.g` to move the nozzle over the Z switch/FSR rod. Simply move the nozzle so it is aligned with the rod. If you cannot move the carriage back enough to hit the rod, you will need to move the rod back. If you can't do that, you need to move the entire bed forward so the nozzle can reach both the front of the bed and the FSR rod. _Note that if you physically move the bed, you will need to redo your axis minima and maxima configuration._
- Adjust `/sys/bed_probe_points.g` to match your bed size. Personally I use a 50mm pad around the bed, so a 250 build would use `X200` and `Y200` there.
- Final test before leveling: home all axes and then run `/macros/print_scripts/goto_z_switch.g`. The nozzle should be aligned in XY right over the FSR rod. Change things around until this works.
- At this point the leveling magic should work. You can issue `G32` in the Console or click the "true bed leveling" button in DWC. The printer will home XY, then Z in the center using the inductive probe, then probe each corner in sequence (starting with the back right). After found points the gantry will magically untwist itself. Sometimes several passes are required before getting a perfect level, you can adjust this as needed. Two passes are generally sufficient but sometimes not, so I've put three to be sure.
- It is possible for the gantry to bottom out if it is severely out of level. This is normal. This will not happen when you turn off the machine and relevel later. 
- In my config the motor currents are lowered during homing to allow skips if necessary, and reduce the chance of damage in case of problems. You can adjust this behavior by editing `/macros/print_scripts/xy_current_low.g` and `/macros/print_scripts/z_current_low.g` to whatever you want. You can comment out the `M913` calls there if you don't want to lower currents while homing/leveling.

Final adjustments with the gantry mostly leveled:
- Fix axis maxima & minima so that (0,0) is at the front left (`M208` in `/sys/config.g`).
- Fix Z switch position (`G1` in `/macros/print_scripts/goto_z_switch.g`).
- Fix belt positions (`M671` in `/sys/config.g`).
- Set back `M564 S1 H1` in `/sys/config.g` if you disabled it earlier.
- Set the parking position in `/sys/pause.g` (do not call `G28 XY` in this file! if you do you won't be able to resume).
- Adjust `/macros/print_scripts/goto_front_middle.g` for X to be at the middle of your bed. I use this macro to swap toolheads, remove the bowden, etc.

Heaters, temperature sensors and fans:
- I use a dual thermistor bed setup (Keenovo built-in thermistor and a separate stud thermistor on the edge of the bed). You will need to adjust `M305` and `M307` to fit your setup for the bed heater in `/sys/config.g`. If you use a single-thermistor setup, don't forget to delete my 2nd thermistor bit (the `M305`, `M307` and `M143` commands for `H0` in the dual-thermistor section).
- I use PT100 sensors for my hotends. If you use standard thermistors, you will need to adjust the `M305` for the hotend. Don't bother with `M307`, this will be set automatically later during PID tuning. I keep them there as a reference so I can swap between toolheads without having to re-do PID tuning, by copying them back into `/sys/config-override.g`.
- Ignore the 2nd hotend heater. Stock VORONs do not support dual extrusion. I only keep this as a reference for testing.
- Adjust the `M106` in `/sys/config.g` to match where you connected your fans. I use 12V fans connected to the Duex board, because my Duet is powered with 24V (so its fan pins are also 24V).
- At this point you are ready for the PID tuning. Issue a `M303 H1 S240` from the DWC console. If you enabled PID for the bed, do that too now. When you are done, issue `M500` to save the results to `/sys/config-override.g`.
