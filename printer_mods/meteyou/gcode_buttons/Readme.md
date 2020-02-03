<p align="center">
  <img src="installed_view.jpg" width="600" title="Gcode buttons">
</p>

--------------------------------------------------------------------------------
Gcode Buttons
--------------------------------------------------------------------------------
Build your owns buttons to execute gcode without webinterface or printer display.
I don't have a display on my small Voron (250³) and i only need 4 types of action in front of the printer so i want to add some buttons on my printer. This mod is my interpretation for buttons in the skirt.

--------------------------------------------------------------------------------
Functions of my gcode buttons
--------------------------------------------------------------------------------
- unload filament
... if the extruder temperature is higher than 190 degrees, it will unload your filament.
- preheat
... heatup the heater_bed to 100 degrees and set your chamber temperature to 50 degrees. if your heater_bed is already be heated, it will cooldown the heater_bed and set the chamber temperature to 45 degrees.
- load filament
... if your filament is be unloaded (press unload filament button before) it will be load your filament. if the filament is already be loaded, it will purge 20mm of filament with 5mm/s.
- light on/off
... with this button, your printer is only switch on/off your light.

--------------------------------------------------------------------------------
How to build
--------------------------------------------------------------------------------
<p align="center">
  <img src="explode-plan.png" width="600" title="explode plan">
</p>

--------------------------------------------------------------------------------
Configurate your Firmware
--------------------------------------------------------------------------------
Include the printer_buttons.cfg in your Klipper config.
If you use RRF, feel free and add here a config file for this firmware. I don't use RRF so a cannot write a config file...

--------------------------------------------------------------------------------
BOM
--------------------------------------------------------------------------------
- filament
- Cherry MX Buttons (my favorit type is the green version. hard respond with click sound)
- cables
- 3mm LED
- resistors
