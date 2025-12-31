WristWatch extruder with OEM IDGA gearset.

![alt_text](https://github.com/minilogique/ww-extruder-for-idga/blob/main/images/core.JPG)

![alt text](https://github.com/minilogique/ww-extruder-for-idga/blob/main/images/5.png)

To see it in action pushing 95A TPU at 29mm3/s https://www.youtube.com/watch?v=95B_EeGK_1Y

Had an OEM IDGA gearset laying around and I had nothing else to do with it. Clockwork2 seemed to be unecessarily complex so I opted to butcher WristWatch2 BMG version to make it fit IDGA as it's already fairly similar. Needed to move the filament path 9.25mm forward and match the mounting pattern, because of that the extruder is a bit longer and stepper is farther away for that amount.

![alt text](https://github.com/minilogique/ww-extruder-for-idga/blob/main/images/1.png)

## BOM
```
Main hardware
2 M3 thin square nuts
2 M3x20 (1 M3x20 if you do not use smooth idler)
1 M3x12 (2 M3x20 if you do not use smooth idler)
1 M3x16
1 M3x25
1 OEM IDGA gearset
1 M3 thin washer
1 extruder spring

For smooth idler
1 685-2RS bearing
1 flathead M3x16
1 M3 thin washer

```

Used hardware is identical to WW extruder list except the gearset. Print settings are recommended to be of official Voron spec. Centre of Mass is shifted so it quite possibly will affect your resonance with more aggressive print settings. Parts except idler arm are printed as oriented in the files. Drilling/cleaning filament path with 2mm nail/drillbit might be needed depending of your print quality.

- Update 21.12.2025 - increased radius for smooth idler arm around the bearing and added a sleeve that fits the bearing to reduce the play and possible binding when arm bends under load.
- Update 11.03.2025 - uploaded new models, improved looks and strength, added integrated supports for tension arm model. Improved the visuals for smooth idler bearing arm. Created Github page, added BOM.
- Update 21.05.2025 - fixed 3mf files, modified descriptions.
- Update 29.11.2025 - reduced main drive axle tolerances to 0.333mm or about 0.16mm around the axle to further improve TPU reliablity. Re-did the renders aswell and updated the CAD file.

Also available at https://www.printables.com/model/1154980-wwbmg-wristwatch-extruder-for-idga-not-ridga-with

Original source for the mod idea came from https://github.com/Armchair-Heavy-Industries/A4T
