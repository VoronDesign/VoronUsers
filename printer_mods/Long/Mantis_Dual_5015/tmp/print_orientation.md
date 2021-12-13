|  Link  | Description |
|--|--|
| [Readme](readme.md)  |  Mantis Description  |
|  [Print Orientation](print_orientation.md)  |  Printing the parts  |
|  [BOM and Acknowledgements](bom_acknowledgements.md)  |  BOM, links to other repositories, acknowledgements  |
| [Carriage Assembly](carriage_assembly.md) | Building the MGN9, MGN12 Carriage, Hotend Mounts |
|  [Magprobe Assembly](magprobe.md)  |  Assembly of Mag Probe  |
|  [Firmware and Slicer Settings](firmware_slicer_settings.md)  |  Firmware and Slicer Settings |
|  [Change log](changelog.md)  |  Change Log
|  [Long's Mantis Repository](https://github.com/mandryd/VoronUsers/tree/master/printer_mods/Long/Mantis_Dual_5015) | Long's Repository for Mantis.  Updates and newest stuff will be found here.  |

Print Orientation
============
![Print Orientation](images/print_orientation_slicer.png)

Slicer Tips:
- Perimeters/Shells
  - 3-4 Perimeters and low infill is adequate.
  - Josh Murrah is using 3perim/40% on his toolhead used in speedruns.
  - I’ve been using 4 perimeters/15%
- Ducts
  - Check that this outlet divider is sliced in a sane way.
  - In superslicer, I find the “keep only bridges” option under "Perimeters & Shell” works well for the ducts
  - <img src="images/print_orientation_keep_only_bridges.png" width=50% height=50%><img src="images/print_orientation_duct_divider.jpg" width=50% height=50%>
  - The ducts have some tough overhangs, so orient the part so the over hangs print the best for you. Prioritize good quality for the outlet. The 5015 mount surface will generally be rough, but that’s ok.
<img src="images/print_orientation_ducts.jpg">
