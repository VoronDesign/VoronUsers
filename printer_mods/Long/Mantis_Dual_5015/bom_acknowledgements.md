<table width=100%>
<TR>
<TD align="center"><B>Link</TD><TD align="center"><B>Description</TD></TR>
<TR><TD align="center"><a href="readme.md">Readme</A></TD><TD align="center">Mantis Description and Updates</TD></TR>
<TR><TD align="center"><a href="bom_acknowledgements.md">BOM and Acknowledgements</A></TD><TD align="center">BOM, links to other repositories, acknowledgements</TD></TR>
<TR><TD align="center"><a href="print_orientation.md">Print Orientation</A></TD><TD align="center">Printing the parts</TD></TR>
<TR><TD align="center"><a href="carriage_assembly.md">Carriage Assembly</A></TD><TD align="center">Building the MGN9, MGN12 Carriage, Hotend Mounts</TD></TR>
<TR><TD align="center"><a href="magprobe.md">Magprobe Assembly</A></TD><TD align="center">Assembly of Mag Probe</TD></TR>
<TR><TD align="center"><a href="firmware_slicer_settings.md">Firmware and Slicer Settings</A></TD><TD align="center">Firmware and Slicer Settings</TD></TR>
<TR><TD align="center"><a href="1.8_trident.md">Voron 1.8 and Trident</A></TD><TD align="center">Notes on Voron 1.8 and Trident</TD></TR>
<TR><TD align="center"><a href="final_assembly.md">Final Assembly</A></TD><TD align="center">Notes and Pictures of final assembly</TD></TR>
<TR><TD align="center"><a href="https://github.com/mandryd/MantisUsermods/tree/main/Usermods">Usermods</A></TD><TD align="center">Mods by Mantis Users (note: separate repository)</TD></TR>
<TR><TD align="center"><a href="https://github.com/mandryd/VoronUsers/tree/master/printer_mods/Long/Mantis_Dual_5015">Long's Mantis Repository</A></TD><TD align="center">Long's Repository for Mantis.  Updates and newest stuff will be found here</TD></TR>
</table>


BOM, Links, and Acknowledgements
============
**BOM:**
- Fasteners
  - m2 x 10 (or m2 x 12) self tapping screws
    - This is a standard Voron part used to attach the Omron microswitches
  - Assorted BHCS and SHCS
    - The only Socket Head screws I used are (2) m3x20 that go into the upper hotend mount holes to attach the hotend mount to the carriage.  
  - m3x5x4 heatsets – Standard Voron heatsets
- Magnets
  - m6x3 magnets (standard Voron magnets)
  - larger diameter magnet stack (not required)
    - used when solding wire to magnets so that magnetic field loss is minimized during soldering.  
    - I bet it's prob ok to not worry about losing magnetic field with soldering because of the non-soldered magnets that are stacked outwards of the soldered magnets.  
- MGN9 Carriage
  - (2) Makerbeam XL m3 T-nuts
    - https://www.amazon.com/gp/product/B06XHQHD4H
  - Alternatively use m3 Openbuild T-nuts
      - https://www.aliexpress.com/item/4000886303032.html
      - These will need to be ground down so they’re around 5.5-6mm wide
    - m3x10mm screws will make threading the belts easier but aren’t required.  
- Microswitches
  - D2F-5 is recommend by Annex
  - I’ve had better luck with cheap KW10 microswitches from Aliexpress
    - https://www.aliexpress.com/item/32829746929.html
  - I've tested at least 3-4 of the D2F-5L (with lever ripped off) microswitches, which were genuine bought from Digikey or Mouser. While using these I would often see random probings which would sound different and give results that were not precise. Since switching to the KW10 switches, my bed probing has been much more precise. Maybe I got a bad batch if D2F-5? Who knows….
-  Fans
     - (2) 5015 fans
        - Sunon MF50151VX-B00U-A99 (12v)
          - https://www.digikey.com/short/zrwpw9
          - Note, make sure it is MF5015V ***X**** the X is important
        - Delta BFB0524HH (24v)
          - Delta: https://www.digikey.com/short/z4b1vtpj
          - Delta slightly better than Sunon >> GDSTime >> Winsinn
      - 3010 Hotend Fan
        - Sunon 3010v1 (12v)
          - This is the fan I tested first and is a great fan with great specs.  I never had any issues with it.
          - This fan is kinda "spinny" but I don't notice it once the panels are on.  
          - https://www.digikey.com/short/t5dpqw4w
        - Sunon 3010v2 (12v)
          - This is a quieter alternative to the 3010v1.  
          - I have been testing this fan lately (a few weeks) and it working fine so far with my dragon/crazy volcano setup printing ABS with chamber temps of 50-60c.  I have not yet tried printing PLA yet with this.  
          -  https://www.mouser.com/ProductDetail/Sunon/MF30101V2-1000UA99?qs=EU6FO9ffTwfZ4Kz3LWY0zg%3D%3D
      - I know of people using winsinn fans and all kinds of random 3010 fans they find in drawers.  They all seem to be working as far as I know.  
        
**References, Acknowledgements:**
- Mini-Sherpa
  - See the Annex guide for its instructions and BOM.
  - https://github.com/Annex-Engineering/Sherpa_Mini-Extruder
  - https://www.youtube.com/watch?v=3WogD5IUwAM
- Mag Probe
  - Credit to ANNEX for their awesome work here on their mag probe.  They deserve a lot of kudos for the idea and implementation of mag probes.   
    - https://github.com/Annex-Engineering/Quickdraw_Probe
  - My version is very similar the Annex Mag Probe.  I remade it to be longer, added a 3rd magnet, and modified the dock arms and dock mating surfaces slightly.  
  - The mag probe and being able to remove the bulk of the Omron probe is a major factor in what made this tool head possible. Please see Annex's mag probe repository for the original.
- HartK Y-Endstop Relocation and Pin Mod
  - I highly recommend relocating the Y-endstop to the a/b drive.  Since the X endstop is on the carriage, this will allow you to remove the endstop pod completely from the right XY joint.  
  - Normal 2.4 version - [https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Y_Endstop_Relocation](https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Y_Endstop_Relocation)
  - [Pin mod](https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Pins_Mod) 2.4 version - [https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Pins_Mod/STLs/Gantry/AB_Drive_Units](https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Pins_Mod/STLs/Gantry/AB_Drive_Units)
  - I also like HartK's Pin Mod.  I'm using it on the A/B joints and XY joints.  I'm using Rama's Front Idlers instead of the pin mod front idlers.  
    - [https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Pins_Mod](https://github.com/hartk1213/MISC/tree/main/Voron%20Mods/Voron%202/2.4/Voron2.4_Pins_Mod)
-  JoshMurrah
   -  Just wanted to note him here as he has been extremely helpful in some insane stress testing. His speed benchies have been fun as hell to watch and a motivation for me to keep improving. His testing has resulted in a lot of improvements to this toolhead.
-  JosAr
   -  Thank you to JosAr for his work on creating a gantry mounted magprobe dock.
- Rama
  - For his version of narrow idlers. 
    - I highly recommend changing your idlers to these while you're changing things out.  This mod will gain you *almost* all all the build area at the front idlers back.  I think it's down to 2mm loss if you use these.
    - https://github.com/Ramalama2/Voron-2-Mods/tree/main/Front_Idlers
- Phalanx
  - For his “Other V2 Idlers” 
    - https://github.com/selliott79/Other-V2-Idlers
- Henrikssn
  - Helping with early testing of the MGN9 carriage.
  - Created an awesome [toolhead board](https://github.com/mandryd/MantisUsermods/tree/main/Usermods/Henrikssn/Toolhead_PCB) and a modified carriage allowing for Klicky compatability.
- BobArctor
  - BobArctor also helped with early single mgn9 testing and test of the Dragon/Crazy Volcano combination
- Wingzero
  - Did a lot of testing/design to get the mosquito hotend working with Mantis
- TheWarolf
  - Modified the hotend mount so that an ERCF sensor would fit and added compatibility with LGX Lite and Sailfin.
  - https://github.com/TheWarolf/Voron-Personal-Mods/tree/main/V2/Long_Mantis_Toolhead
- BeWater, Charles, Dustinspeed, and many others
  - Mantis has been a working collaboration with many people.  Thanks you to everyone who has used Mantis and provided any feedback and usermods.
