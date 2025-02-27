# RapidoTZ Hotend Construction Guide

This guide details the steps to build the RapidoTZ hotend, a modified Bambu Lab TZ 2.0 hotend with an extended melt zone using a Volcano nozzle and copper nuts, effectively transforming it into a Rapido V2.0-like hotend.
Facing [layer adhesion problems](https://youtu.be/PPyiACzsLWM?si=C5Oih0QtXfa8OBcW&t=306) and flow rate drop-off.
* The hotend costs about €12 in total.
* 1 hour to build the hotend mod.

## Video
[![Building Guided Video](https://img.youtube.com/vi/uBIikwfB0nQ/0.jpg)](https://www.youtube.com/watch?v=uBIikwfB0nQ)

## Materials Needed

* Bambu Lab TZ 2.0 Hotend with Heater and Thermistor ([Aliexpress](https://de.aliexpress.com/w/wholesale-TZ-hotend.html))
* Additional 40-50W Heater (Bambu Lab compatible, [Aliexpress](https://de.aliexpress.com/w/wholesale-bambulab-heater-50W.html), Sum: 100W to 120W heating )
* Volcano Nozzle
* Two M6 Copper Nuts (alternative Steel Nuts, thx to [CNC Kitchen](https://www.youtube.com/watch?v=_Soz8z-vAIw))
* High Temperature Silicone (up to 450°C, e.g., [TFC-Troll-Factory-Silikon-Kautschuk-Typ-3](https://trollfactory.de/Produkte/Silikon-Kautschuk/Verarbeitungszeit/sehr-schnell-5-Min/TFC4021/TFC-Troll-Factory-Silikon-Kautschuk-Typ-3-HB-Zinnguss-hitzebestaendig-RTV-1-1-Groesse-1kg-2x500g))
* Two M3 Screws (6mm length for Silicon Sock Mold)
* Syringe 20 ml
* [PETG Printed Silicone Sock Mold](https://github.com/LernFabrik/RapidoTZ-Hotend-Mod/tree/main/stl)
* [Voron Stealthburner Bambu Printhead Volcano Mod](https://github.com/LernFabrik/RapidoTZ-Hotend-Mod/tree/main/stl): Hotend Front
* [Voron Stealthburner Bambu Printhead](https://www.printables.com/model/322091-voron-stealthburner-printhead-for-bambu-x1cx1-hote): Hotend Insert, Back 

## Tools

* Silicone Sock Mold (3D printed, PETG)
* File
* Cutter Knife
* Vise (optional)
* Two Small Pliers
* Thin Screwdriver
* Allen Key for M3 Screws
* Multimeter

## Construction Steps

1.  **Silicone Sock Mold Assembly:**
    * Assemble the inner and outer mold parts using the M3 screws.
    * Secure the lid, ensuring the inner part stays in place and doesn't rotate.
    * Mix the silicone, fill the syringe, and inject it into the mold.
    * Allow the silicone to cure completely.

2.  **Hotend Preparation:**
    * Secure the TZ 2.0 hotend in a vise.
    * File the side opposite the original heater plate to create a flat surface for the second heater.

3.  **Heater/Sensor Clip Modification:**
    * Carefully bend open the existing heater and temperature sensor clip at the open end, creating a U shape.
    * Carefully bend the U shape to a O shape, by bending the small Stegs of the clip.

4.  **Hotend Assembly:**
    * Assemble the hotend with the heater plates positioned opposite each other and the temperature sensor in between.

5.  **Silicone Sock Removal:**
    * Remove all screws and the lid from the silicone mold.
    * Use an Allen key to push out the inner mold from below.
    * Carefully detach the silicone sock from the mold edges using a screwdriver or Allen key.

6.  **Silicone Sock Modification:**
    * Cut a 5x5mm opening on the top of the silicone sock for the wires.
    * Cut the sides of the sock, so that the sock can slide over the heatbreak.

7.  **Silicone Sock Installation:**
    * Carefully slide the silicone sock over the assembled hotend.
    * Ensure the clip does not slide upwards, which could cause a short circuit.

8.  **Electrical and Mechanical Installation:**
    * Connect the two heater plates in parallel.
    * Install the modified hotend into the printer's toolhead.
    * Use a multimeter to check for short circuits in all wiring.

9.  **Klipper Configuration:**
    * Configure Klipper settings, including Z-probe offset.
    * Remember to adjust the Z-probe position.
    * Perform a PID tune of the hotend.
    * Enjoy printing!



## Disclaimer

* This modification involves working with high temperatures and electrical components. Proceed with caution.
* The creator of this guide is not responsible for any damage or injury resulting from following these instructions.
