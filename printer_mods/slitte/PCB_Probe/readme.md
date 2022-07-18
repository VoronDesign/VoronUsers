# PCB_Probe




Short discription: This PCB can be mounted on the DIN Rail under a Voron 3D printer. There are two ways of wiring the Omron inductive probe to the BTT Octopus V1.1 mainbord. Either you wire the probe directly to the dedicated probe port of the Octopus, or you wire the probe to an Endstop Port(DIAG_7).
For both ways you need additional components to run the probe properly. 

In case you decide for the dedicated probe port, you need a 4k7 Ohm pull up resistor between the signal to +24V. Just solder the THT 4k7 pull up resistor on it's place and set the jumper to "w/o BAT85". This bridges the diode. You can leave the space for the diode empty.


For the official recommended way to wire the probe to DIAG_7 port, a BAT85 diode is needed to prevent the mainboard from damage. Just solder the BAT85 in it's place and set the jumper to "w BAT85". When using this configuration, you must leave the pull-up resistor out. 


It's compatible with the Voron Trident and V2.4. If you use the Toolhead PCB by hardk, you may not need this PCB because the Toolhead pcb got a BAT85 diode already.

The following part has to be printed x1: [pcb_din_clip_x3](https://github.com/VoronDesign/Voron-2/blob/eb094399681bcac4efce723157b8638c69173cb3/STLs/Electronics_Bay/pcb_din_clip_x3.stl)


BOM:

- 1x PCB_Probe
- 2x M2x10 self tapping screws
- 2x JST B3B-XH-A
- 1x BAT85 or 1x 4k7 Ohm Restistor (depending on the way you want to wire the probe)
- 1x pcb_din_clip
- 1x 2 pin jumper bridge
- 1x 3 pin pin-header 2,54mm



!!!Attention!! 
the images show the Prototype state of the project and doesn't include the Pull Up resistor mount. Used probe: Omron TL-Q5MC2-Z
