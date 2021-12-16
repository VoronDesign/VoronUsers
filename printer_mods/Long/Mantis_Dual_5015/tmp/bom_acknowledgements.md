|  Link  | Description |
|--|--|
| [Readme](readme.md)  |  Mantis Description and Updates |
|  [Print Orientation](print_orientation.md)  |  Printing the parts  |
|  [BOM and Acknowledgements](bom_acknowledgements.md)  |  BOM, links to other repositories, acknowledgements  |
| [Carriage Assembly](carriage_assembly.md) | Building the MGN9, MGN12 Carriage, Hotend Mounts |
|  [Magprobe Assembly](magprobe.md)  |  Assembly of Mag Probe  |
|  [Firmware and Slicer Settings](firmware_slicer_settings.md)  |  Firmware and Slicer Settings |
| [Voron 1.8 and Trident](1.8_trident.md)| Notes on Voron 1.8 and Trident|
|  [Final Assembly](final_assembly.md)| Notes and Pictures of final assembly
|  [Long's Mantis Repository](https://github.com/mandryd/VoronUsers/tree/master/printer_mods/Long/Mantis_Dual_5015) | Long's Repository for Mantis.  Updates and newest stuff will be found here  |


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
  - larger diameter magnet stack 
    - used when solding wire to magnets so that magnetic field loss is minimized during soldering.  Honestly though I think it probably doesn't matter if you don't worry about it.  See the magprobe build page for more details.  
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
        - I’m using Sunon 3010v1 (12v)
          - This fan is kinda "spinny" but I don't notice it once the panels are on.  
        - https://www.digikey.com/short/t5dpqw4w
      - Sunon 3010v2 (12v)
        - This is a quieter alternative to the 3010v1.  
        - I have been testing this fan lately and it seems to be working fine with my dragon/crazy volcano setup printing ABS with chamber temps of 50-60c.  I have not yet tried printing PLA yet with this.  
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
- Ark’s MGN12H Mod
  - There may be several mgn12 mods floating around. This is one of them:
  - https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/arkeet/mgn12
-  JoshMurrah
  -  Just wanted to note him here as he has been extremely helpful in some insane stress testing. His speed benchies have been fun as hell to watch and a motivation for me to keep improving. His testing has resulted in a lot of improvements to this toolhead.
-  JosAr
  -  Thank you to JosAr for his work on creating a gantry mounted magprobe dock.
- Rama
  - For his version of narrow idlers. 
    - https://github.com/Ramalama2/Voron-2-Mods/tree/main/Front_Idlers
  - Phalanx
    - For his “Other V2 Idlers” 
      - https://github.com/selliott79/Other-V2-Idlers
- Henrikssn
  - Helping with early testing of the MGN9 carriage.
  - Created an awesome [toolhead board](https://github.com/mandryd/VoronUsers/tree/master/printer_mods/Long/Mantis_Dual_5015/Usermods/Henrikssn/Toolhead_PCB) and a modified carriage allowing for Klicky compatability.
- BobArctor
  - BobArctor also helped with early single mgn9 testing and test of the Dragon/Crazy Volcano combination
- Wingzero
  - Did a lot of testing/design to get the mosquito hotend working with Mantis
- BeWater, Charles, Dustinspeed, and many others
  - Mantis has been a working collaboration with many people.  Thanks you to everyone who has used Mantis and provided any feedback and [user mods](Usermods/readme.md).
