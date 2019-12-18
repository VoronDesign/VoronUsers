This is my modded version of Eddie's SKR Klipper config file.

* Voron Design VORON2.2 V2.291 300mm SKR 1.3 TMC2209 UART config
* Based on Eddie's template and guide from:
* github.com/VoronDesign/VoronUsers/tree/master/firmware_configurations/klipper/eddie
* with the following adjustments and additions from bryansj:
*   RepRapDiscount 128x64 Full Graphic Smart Controller
*   Nozzle Wipe
    *   added to G32
*   Prime Line
*   Extended QGL corner points
*   Bed Meshing (Commented Out)
*   TL Filament Run-out Sensor
*   Chamber Temperature Thermistor (in Z vertical Chain)
    *   linked to Back Panel Exhaust fan 
*   Force Move Enabled
*   Pause/Resume Enabled
*   Homing IF/THEN to omit unneeded homing operations
*   M117 LCD Text Added *16 Characters Max
*   Expanded LCD Menu Options for Voron/Klipper Commands
    *   Quad Gantry Level, Firmware_Restart, TESTZ Offsetting