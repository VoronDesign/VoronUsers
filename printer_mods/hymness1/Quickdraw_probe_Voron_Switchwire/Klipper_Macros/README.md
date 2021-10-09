The macros are working on official Klipper firmware.

The values that are in the config file are the values I use for my Switchwire. You can still use these macros if you use the files for the probe and dock from Annex Engineering. If you do, you'll want to change the value for variable_detach from 1 to 2.

For the initial homing for the Z-axis, there are options for probe homing, sensorless homing and endstop microswitch homing.

There are some safety measures, but this is still a work in progress. For the moment, failing to dock will kill the printer (M112), as failing to dock properly could result in damaging the probe itself or the bed. As for failing to attach the probe, you'll get an error message stating that the probe reports as triggered prior to movement. Be sure to add `dock_probe` to your start_print macro after your bed mesh or other probing actions.

You can find my `printer.cfg` and other relevant macros for reference [here](https://github.com/hymness1/Switchwire_Things/tree/main/klipper_config)

# Initial Startup

I'm assuming you already have an up and running Switchwire prior to using the Quickdraw Probe and using the modded KeyBak mount.

1. Backup your `printer.cfg` file
2. Upload dock_macros.cfg to klipper_config folder. Do not include it yet in `printer.cfg`
3. Manually move the toolhead so you can easily attach and detach the probe manually
4. With the probe detached, run `query_probe` in the terminal. It should report as triggered
5. With the probe attached, run `query_probe`. It should report as open
   * If it reports as open when detached and triggered when attached, you'll need to invert the pin in your `printer.cfg` file in the [probe] section.
   * Press down the trigger of the probe microswitch and issue a `query_probe` command. It should report as triggered. A third hand might be handy.
6. Manually move the toolhead up. Home the toolhead and test that it triggers by pressing the trigger on the probe. If not kill the printer.
7. Set your Z-offset
   * Home the toolhead
   * Manually remove the probe
   * Use the paper test to get your Z-offset
   * Update your printer.cfg [probe] section with the calculated Z-offset, change `y_offset` to `-34.5` and change `speed` to `3`
8. Get the dock coordinates
   * Home the toolhead
   * Using Fluidd or Mainsail UI, or the terminal, go at Z15 (or any height higher than the dock) and slowly move the toolhead towards the dock (it should be at X250). Slowly move the toolhead down 1mm at a time, verify that the dock and the probe are aligned on the X direction (if not, adjust the X coordinates or if you can't, you might need the spacer). Continue to move the toolhead down up to the point that the probe is in the dock (without pressing down against it). Take notes of the coordinates.
 * Move the toolhead 25mm to the left. Probe should detach and stay in the dock. If everything is good, repeat another time the last steps to verify and go to the next step.
9. Update `dock_macros.cfg` with your dock coordinates. Also update all the other values in the GlobalVariables section with your printer specific values. Save and exit.
10. In `printer.cfg` :
   * Remove of comment `[safe_z_home]` and/or `[homing_override]` sections
   * In `[stepper_z]` section, change `endstop_pin` for the pin used for the modded KeyBak microswitch
   * In the same section, add the parameter `position_endstop` and enter the value for the Z coordinate of the modded KeyBak microswitch location (for example, mine is set at `-2.6`). We'll calibrate it in the next step. Save and restart firmware.
11. Detach the probe from the toolhead. Manually move the toolhead at the middle of the gantry. Push the bed all the way to the rear.
12. Issue the command `query_endstops`. Your Z endstop should report as open.
13. Issue the command `query_endstops` while pressing down your Z endstop trigger. Your Z endstop should report as triggered.
    * If the last 2 steps doesn't report as they should, invert the `endstop_pin` or check your wiring.
14. Test your Z endstop :
    * Issue a `G28 Z0` command. Manually press the Z endstop trigger. If the toolhead continues to go down, kill the printer, adjust your `printer.cfg` section or check your wiring. When everything work as intended, continue to the next step.
15. Still with the toolhead in the middle of the gantry and the bed all the way to the rear, issue a `G28 Z0` command.
16. In the terminal, issue `G0 Z15` command. Manually attach the probe to the toolhead.
17. In the terminal, issue `G28 X0` command.
18. Using Fluidd or Mainsail UI, or using the terminal, move to the dock X coordinate. Move the toolhead down 1mm at a time and babystep so the probe enter the dock. Try to have it at the same location as when you calculated the dock coordinates earlier. Note the Z coordinate.
    * This doesn't have to be super precise. Z endstop homing is only used for the initial Z homing in order to attach the probe from the dock.
19. Calculate `last step dock Z coordinate` minus `dock Z coordinate from step 7`.
20. In `printer.cfg`
    * Add `[include dock_macros.cfg]`
    * Enter the correct value for the `position_endstop` in `stepper_z` section by substracting the result in step 19.
    * Save and restart firmware
