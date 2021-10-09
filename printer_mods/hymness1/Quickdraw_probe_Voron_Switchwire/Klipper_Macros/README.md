The macros are working on official Klipper firmware.

You first need to enter the parameters for the dock variables in dock_macros.cfg. The values that are in the config file are the values I use for my Switchwire. You can still use these macros if you use the files for the probe and dock from Annex Engineering. If you do, you'll want to change the value for variable_detach from 1 to 2.

For the initial homing for the Z-axis, there are options for probe homing, sensorless homing and endstop microswitch homing.

You need to add [include dock_macros.cfg] in your printer.cfg file

There are some safety measures, but this is still a work in progress. For the moment, failing to dock will report an error state and pause any ongoing action. As for failing to attach the probe, you'll get an error message too stating that the probe reports as triggered prior to movement. Be sure to add dock_probe to your start_print macro after your bed mesh or other probing actions.

You can find my printer.cfg and other relevant macros for reference [here](https://github.com/hymness1/Switchwire_Things/tree/main/klipper_config)

I plan to write a tutorial here for initial startup. In the meantime, you can hit me up on Discord @hymness1#0546
