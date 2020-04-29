# Mods

Printer mods for Voron 3D printers
Remember to update this README when uploading new mod!

## Table structure

Update the following table with the information about your mod:
- Your name
- A link to your sub-folder
- A short description of your mod
- The printer compatibility. Use `:heavy_check_mark:` for :heavy_check_mark:,`:x:` for :x: and `:grey_question:` for :grey_question:

like so:
`
| Creator | [Mod title](link) | Description | :x: | :x: | :x: | :x: | :x: | :x: |`

## Updating the compatibility matrix

If your mod is lacking a column in the compatibility matrix, feel free to submit a PR to get it updated!

---

| Creator | Mod title | Description | V0 | V1.6 | V1.8 | V2.1 | V2.2 | V2.4 |
|---------|--------------|-------------|------|------|------|------|------|------|
| 3D_Black   | [Fan Covers](./3D_Black) | Different fan covers for 40mm fans | :grey_question: | :heavy_check_mark: | :grey_question: | :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| agsolino | [RunOut Filament Holder](./agsolino/RunOutFilamentHolder) | Holder for TriangleLab Runout sensor | :grey_question: | :grey_question: | :grey_question: | :grey_question: | :heavy_check_mark: | :grey_question: |
| | [RS-25-5 Rotated](./agsolino/RS25-5-Rotated) | RS-25-5 PSU mount rotated 90 Degrees | :grey_question: | :grey_question: | :grey_question: | :grey_question: | :heavy_check_mark: | :grey_question: |
|Andreq | [Mobius Shaft Jig](./andreq/voron2)|Tool used for grinding flats on a shaft at specific places | :grey_question: |:heavy_check_mark: | :grey_question: |:heavy_check_mark: |:heavy_check_mark: | :grey_question: |
|Armstr0ng |[Led extrusions mount](./Armstr0ng) | A mount for aluminium LED extrusions with hidden fasteners  | :grey_question: | :grey_question:| :grey_question: |:heavy_check_mark: | :heavy_check_mark:| :grey_question: |
| ArmyAg08|[Logitech Camera Mounts](./ArmyAg08/Logitech_C270_Mounts) |Different Logitech camera mounts, attached to the extrusions. Fits C270 and C310 | :grey_question: |:heavy_check_mark: | :grey_question: |:heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| | [Corner Panel Clip](./ArmyAg08/Panels)|Corner panel clip that fit 3mm or 1/8" panels with foam tape | :grey_question: | :x:| :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
| Badnoob |[Precision AB Drive](./Badnoob/Precision_AB_Drive)|Changes the gearing for the AB drives to improve both resolution and torque, with a strenthened frame. | :grey_question: |:grey_question:| :grey_question: | :grey_question:|:heavy_check_mark:| :grey_question: |
| |[Serial Plate](./Badnoob/Serial_Plate) |Modified skirt piece to display your serial number| :grey_question: |:x:| :grey_question: | :x:|:heavy_check_mark:| :grey_question: |
| |[Rail Alignment](./Badnoob/Rail_Alignment)|Tools and procedure to properly align the rails in 2.4 and Afterburner| :grey_question: |:x:| :grey_question: | :x:|:x:| :grey_question: |
| bryansj   | [Rotated Pi Mount with Heatsink](./bryansj/RPi_Frame_with_Heatsink_90deg) | Raspberry Pi with Heatsink Frame for minimal channel width | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Keystone Jack Universal Skirt Insert](./bryansj/Keystone_Jack_Universal_Skirt_Insert) | Keystone Jack Insert to fit into any hexagonal hole in the skirt | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Befenybay Chain Anchors](./bryansj/Befenybay_Chain_Anchors) | Befenybay 10x11 Drag Chain Top Anchor and 2020 Extrusion Mount | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| blamm   | [Blind Joint Drilling Jigs](./blamm/jigs) | Jigs to drill your blind joints in the right spot | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [HEPA Filter Housing](./blamm/hepa_filter) | HEPA Filter Housing for cheap Roomba filters | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Relay module bracket](./blamm/relay_bracket) | Relay module (4 channel) mount | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| cadriel | [Triangle Lab Filament Sensor Mount](./cadriel/triangle_lab_filament_sensor_mount) | Triange Lab filament sensor mounts | :grey_question: | :grey_question: | :grey_question: |  :grey_question: | :heavy_check_mark: | :grey_question: |
| Cerulean   | [Respooler](./Cerulean/Respooler) | Respool tangled spools or bad koils | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| chilicoke   | [Low Profile Exhaust Duct](./chilicoke/Low_profile_exhaust_duct_adapter) | Quick-release exhaust duct adapter that requires minumal rear spacing  | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|Danowar |[Dual Mobius Mount](./Danowar/Dual_Mobuis_Mount) | Mounts two Mobius Extruders to the back of the printer| :grey_question: | :heavy_check_mark:| :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| |[F6 Board Mount](./Danowar/F6_Board_Mount) | Mounts for FYSETCS F6 controller boards| :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:| :heavy_check_mark:| :grey_question: |
| |[Humidity Sensor Bracket](./Danowar/Humidity_Sensor_Bracket) |Mount for Humidity/Temperature sensor | :grey_question: |:heavy_check_mark: | :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
| |[Load Cell Spool Holder](./Danowar/Load_Cell_Spool_Holder)| Spool holder with built in weight scale| :grey_question: |:x: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[TL 2-to-1 Mosquito Toolhead Adapter](./Danowar/TL_2-to-1_Mosquito_Toolhead_Adapter)| Mounts the Triangle Labs 2-to-1 adapter directly to the mosquito toolhead| :grey_question: |:heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[Tablet mount](./Danowar/Tablet_Mount)|Detachable mount for tablet using magnets | :grey_question: |:heavy_check_mark:  | :grey_question: | :heavy_check_mark:  | :heavy_check_mark: | :grey_question: |
| |[V2.2 Wrench](./Danowar/V2.2_Wrench)|3 sided wrench for 2.2 bearing caps and panel clips | :grey_question: |:x:  | :grey_question: | :x:  | :heavy_check_mark: | :grey_question: |
| |[Alternative Z Chain](./Danowar/AltZChain)|Alternative mounting for Z-Axis zipchain| :grey_question: |:x:  | :grey_question: | :heavy_check_mark:  | :heavy_check_mark: | :grey_question: |
| daveidmx| [30mm Fan Adapter](./daveidmx/VORON2)|30mm Fan Adapter | :grey_question: | :grey_question:| :grey_question: |  :grey_question:|:grey_question: | :grey_question: |
|Dunar |[Panel Rest](./Dunar/Panel_Rest) | External panel holder | :grey_question: | :heavy_check_mark: | :grey_question: | :heavy_check_mark:  |:heavy_check_mark:  | :grey_question: |
|edwardyeeks| [Decontaminator Purge Bucket](./edwardyeeks/Decontaminator_Purge_Bucket) | Removeable purge bucket | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|etherwalker |[Pi Zero Camera Mount](./etherwalker/Pi_Zero_Camera_Mount) | Pi Zero Camera Mount| :grey_question: | :grey_question:| :grey_question: |  :grey_question:|:grey_question: | :grey_question: |
|exquyre |[Anet 12864 Display](./exquyre/Anet_12864_display) | Case for Anet 12864 LCD display| :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| |[LED Bar Mount](./exquyre/LED_bar_mount) |Mount for 12V LED bars to the top extrusions | :grey_question: |:grey_question: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| |[Cable Cover Insert](./exquyre/cable_cover) |Room for 3-4 20AWG wires | :grey_question: | :grey_question:| :grey_question: |  :grey_question:|:grey_question: | :grey_question: |
| |[Einsy + RAMPS Combo](./exquyre/einsy+ramps) |Mounting bracket for 1 Einsy and 1 RAMPs | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
|FHeilmann |[Voron 2.1 5mm Parts](./FHeilmann/VORON2.1_5mm_parts) |Parts modified for extrusions with 5mm gap. | :grey_question: |:x: | :grey_question: | :heavy_check_mark: | :x:| :grey_question: |
| Fulg| [PanelDue5 LCD Mount](./Fulg/VORON2/PanelDue5)|Mount for the PanelDue5 LCD display | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
|GSL12 |[WAGO 221 Mounts](./GSL12/wago_221_mount)   | Wago 221 mounts for the electronics bay | :grey_question: |:heavy_check_mark: | :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
|Gamsche | [Keystone Skirt Panel](./Gamsche/skirt_keystone)| 25mm skirt panel with integrated keystone jack.  Use with 50mm smaller adjacent skirts for proper fit. | :grey_question: |:grey_question: | :grey_question: | :grey_question: |:heavy_check_mark:| :grey_question: |
|Glowtape | [MKS GenL 1.0 Mounting Bracket](./Glowtape)| MKS GenL 1.0 Mounting Bracket| :grey_question: |:heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark:| :grey_question: |
|GustavTheMighty | [4.3 PanelDue Case](./GustavtheMighty/4.3-Paneldue_Case)|Case/mount for the 4.3 PanelDue LCD Display  | :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: |:heavy_check_mark:  | :grey_question: |
|Iakabos| [c920_Mount](./Iakabos/C920_mount)|Slim mount for logitech c920 webcam| :grey_question: |:grey_question:| :grey_question: | :heavy_check_mark:|:heavy_check_mark:| :grey_question: |
| | [Mini12864 Display Mount](./Iakabos/Mini12864_display_mount)|Case and mounting arms for a Fysetc Mini12864 display | :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| Hackdoggo| [BMGobius](./hackdoggo/v2/bmgobius)|Modification to MZBot's Mobius Extruder to use dual drive Bondtech drivegears | :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|hiemmer | [Tool Holders](./hiemmer/Tool_Holders)| Tool holder for calipers, screwdriver etc| :grey_question: | :grey_question:| :grey_question: |  :grey_question:|:grey_question: | :grey_question: |
|JaredC01 | [Mini 12864 Voron Knob](./JaredC01/Mini_12864_Voron_Knob) | Upgraded knob for Fystec Mini 12864 RGB LED Display | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Keystone Power Panel](./JaredC01/Keystone_Power_Panel)| Power Panel with 1 or 2 Keystone Jacks | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Mosfet Mounts](./JaredC01/Mosfet_Mounts)| Mosfet Mount for 4 or 6 Mosfets | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| Jasperkm | [5mm panel mounting](./Jasperkm/5mm_panel_mounting)| Edited panel clips for 4mm panel + 1mm foam tape| :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Brush holder](./Jasperkm/Brush_holder)| Brush holder next to printbed | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Cable management](./Jasperkm/Cable_management)| Cable trunking and 2020 slot cover | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Exhaust fan guard](./Jasperkm/Exhaust_fan_guard)| VORON styled fan guard for exhaust fan 120mm | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Fire alarm mount](./Jasperkm/Fire_alarm_mount)| Mount for a small fire alarm on the back of the printer | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [LED strip holder](./Jasperkm/LED_strip_holder)| Mount for led strips at an angle at the top of the printer | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Panel key wrench](./Jasperkm/Panel_key_wrench)| Wrench for panel keys for ease of turning | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Simple tool holder](./Jasperkm/Simple_tool_holder)| Holder for 3 small tools using magnets | :grey_question: | :heavy_check_mark: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Skirt mods](./Jasperkm/Skirt_mods)| Some mods the skirts for fans and a clock | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|Jass_on |[Tempered glass clips/handle](./Jass_on/Voron_2.1.1_Tempered_Glass) |Panel clips and handles for using tempered glass side panels | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :grey_question:| :grey_question: |
| | [Rear panel clips](./Jass_on) | Rear Panel Clips| :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :grey_question:| :grey_question: |
| | [SKR 1.3 Cooling bracket](./Jass_on)|SKR 1.3 mount with built in 40mm fan mount | :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|JeJeff |[2020 Extrusion slot cover](./JeJeff/VORON2.1/2020_5mm_Slot_Cover) |Slot covers for extrusions with 5mm slot width | :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| |[Cable Tie Mount](./JeJeff/VORON2.1/Cable_Tie_Mount) |Cable tie mounts for 4mm cable ties | :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| |[Main Plug Panel](./JeJeff/VORON2.1/Mains_Plug_Panel_with_RJ45_Panel_Mount) |Main Plug Panel modified to hold a RJ45 ethernet socket | :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|Jink |[Coroplast mount](./Jink/VORON_2.1/Coroplast_Mount) |Mount / Bracket supporting the coroplast sheets | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :grey_question: | :grey_question: |
| | [Filament runout sensor mount](./Jink/VORON_2.1/Filament_Runout_Sensor_Mount)|Filament runout sensor mount | :grey_question: |:x:  | :grey_question: |  :heavy_check_mark: | :grey_question: | :grey_question: |
| |[Left handed RAMPS mount](./Jink/VORON_2.1/Left_Handed_Ramps_Mount) | Mirrored RAMPS bracket| :grey_question: |:heavy_check_mark:  | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Spool holder with scale](./Jink/VORON_2.1/Spool_Holder_With_Scale)|Spool holder with scale | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :grey_question: | :grey_question: |
| |[WAGO Mount](./Jink/VORON_2.1/WAGO_Mount) |Mount for 3x WAGO connectors | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:| :heavy_check_mark:| :grey_question: |
| JustinVoelker|[Mains Plug Panel with RJ45](./JustinVoelker/VORON2) | Mains plug panel with ethernet cutout| :grey_question: |:heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| K1JWG|[PanelDue 7i Custom Logo](./K1JWG/PanelDue7iLogo) |Custom Voron 2 logo for use as a PanelDue 7i startup splash screen | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
|Koios |[Front Panel Locks](./Koios/6mm_Glass) |Front panel locks for 6mm tempered glass panels | :grey_question: | :x: | :grey_question: |  :heavy_check_mark: | :grey_question:| :grey_question: |
| |[Logitech C920 Mount](./Koios) |Mount for C920 secured to the top front extrusion | :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
| |[LED Mounts](./Koios) |Different mounts for LED light bars | :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
|Kruppes |[V0 Printed Deck with inserts](./Kruppes/Deck_Panel_inserts_logo) |Electronics Deck Panel using brass heat inserts. Optional with accent color Voron Logo. | :grey_question: |:x: | :grey_question: | :x: |:x: | :grey_question: |
|manfre |[Openbuild chain ends](./manfre/cable_chains) |Cable chain ends to use off the shelf chains with Voron parts | :grey_question: |:x: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
|masgar |[Direct Drive for 1.6.2](./masgar/V1.6.2_direct_drive) | Remix of 1.6.2 toolhead and Afterburner | :grey_question: | :heavy_check_mark: | :grey_question: |  :x: | :x: | :grey_question: |
| |[VoltAmpMeter panel insert](./masgar/VoltAmpMeter_Panel_Insert)   | Mounting panel for VoltAmpMeter | :grey_question: | :heavy_check_mark: | :grey_question: | :x: |:x: | :grey_question: |
| |[BTT SKR Mini v1.1 mounting frame](./masgar/BTT_SKR_Mini_v1.1_mounting_frame)   | Mounting frame for BigTreeTech SKR Mini v1.1 | :grey_question: | :heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[2-in-1 hotend housing](./masgar/2-in-1_hotend_housing)   | Front/Rear toolhead housing for XCR3D/BTT/BIQU 2-in-1 hotend | :grey_question: | :heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
|meteyou |[Gcode Buttons](./meteyou/gcode_buttons) |Buttons in the skirt to execute gcode | :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
|mildw4ve |[Beltchain Remake](./mildw4ve/Beltchain_Remake) |Beltchain Remake for Voron 2.2| :grey_question: | :x: | :grey_question: |  :x: | :heavy_check_mark:| :grey_question: |
| |[IR Probe Mount](./mildw4ve/IR_Probe_Mount_V2.2) |DUET IR Probe Mount| :grey_question: | :x: | :grey_question: |  :x: | :heavy_check_mark:| :grey_question: |
|nemgrea |[Magnetic Split Front Door](./nemgrea/magnetic_split_front_door) |Hinges, handles and magnet mounts for creating a split front door panel | :grey_question: |:x: | :grey_question: | :heavy_check_mark: |:grey_question: | :grey_question: |
|OrkusMG | [Waveshare 5 Inch LCD Cover](./OrkusMG/Waveshare5inchHDMILCDscreenCover)|Display Cover for the Waveshare 5 inch HDMI LCD screen | :grey_question: |:heavy_check_mark: | :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
|PhilLeMint | [c920 Mount](./PhilLeMint/c920_Mount/) | c920 Camera Mount | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| |[Panel Mounting](./PhilLeMint/Panel_Mounting/) | Panel Clips for 3/32" Foam Tape | :grey_question: |:grey_question: | :grey_question: |  :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[Dual LED Light Mount](./PhilLeMint/Dual_LED_Light_Mount/) | Mounts for Dual LED Bar | :grey_question: |:grey_question: | :grey_question: |  :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[Velocity Stack](./PhilLeMint/Velocity_Stack/) | Velocity Stack Fan Cover | :grey_question: |:grey_question: | :grey_question: |  :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[Indicator Mount](./PhilLeMint/Indicator_Mount/) | Mount for Indicator | :grey_question: |:grey_question: | :grey_question: |  :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
|pnokel |[Cable Zipper](./pnokel) |Small mount to secure wires with zip ties | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| |[Coroplast holders](./pnokel) | Different coroplast holders for added support | :grey_question: |:x:| :grey_question: |  :heavy_check_mark:|:grey_question: | :grey_question: |
| |[Toothed Idler](./pnokel) |14.5mm toothed idler | :grey_question: | :x: | :grey_question: |  :x: |:x:| :grey_question: |
| przybybr|[V2.1 Omron Mount](./przybybr/V2_1OmronMount/) | Mount for Omron probe in V2.1 | :grey_question: | :grey_question:| :grey_question: | :heavy_check_mark: | :x:| :grey_question: |
| Railgunner|[Dual Direct Drive X Carriage](./Railgunner/10mmBMGx2) |Dual direct drive using 2x Bondtech BMG | :grey_question: | :grey_question:| :grey_question: | :grey_question: |:grey_question: | :grey_question: |
|Randommen96 | [LCD bracket extended](./randommen96/LCD_bracket_extended/) | LCD bracket extended for 6mm panels | :grey_question: | :grey_question: | :grey_question: |  :grey_question: | :heavy_check_mark: | :grey_question: |
| |[Led strip mount DIODER](./randommen96/Led_strip_mount_DIODER/) | Led strip mount for Ikea Dioder | :grey_question: |:grey_question: | :grey_question: |  :grey_question: |:heavy_check_mark: | :grey_question: |
| |[PSU bracket](./randommen96/PSU_bracket/) | PSU AIO bracket for 5v, 12v and 24v | :grey_question: |:grey_question: | :grey_question: |  :grey_question: |:heavy_check_mark: | :grey_question: |
| |[Raspi cam mount](./randommen96/Raspi_cam_mount/) | Cam mount for alie raspi cams | :grey_question: |:grey_question: | :grey_question: |  :grey_question: |:heavy_check_mark: | :grey_question: |
| schlank|[Turbocharger](./schlank/turbocharger) | Alternative fumes extraction solution | :grey_question: | :x:| :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[Minima](./schlank/minima) | Minimalistic Fysetc Mini12864 display mount | :grey_question: | :x:| :grey_question: | :grey_question:|:heavy_check_mark: | :grey_question: |
| Seamen|[RAMPS Extender Holder](./Seamen/RAMPS-Extender_holder) |Mount for RAMPS board with the stepper extender | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
|Slidr | [Energy Chain](./Slidr/EnergyChain) | Alternative energie chain  | :grey_question: | :grey_question: | :grey_question: | :grey_question: |:heavy_check_mark: | :grey_question: |
|Sparreau | [5V Power Supply Mount](./Sparreau)|5V Power Supply Mount | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| |[FSR Circuit Mount](./Sparreau) |Bracket for mounting the FSR PCB. | :grey_question: |:x: | :grey_question: | :heavy_check_mark: |:x: | :grey_question: |
| | [Z Rail Stop](./Sparreau)|Z Rail Stop | :grey_question: | :x: | :grey_question: | :heavy_check_mark:| :heavy_check_mark:| :grey_question: |
| | [Bed Extrusion Spacer](./Sparreau)|Bed Extrusion Spacer | :grey_question: |:x: | :grey_question: | :heavy_check_mark:| :heavy_check_mark:| :grey_question: |
| |[Dial Indicator Fan Mount](./Sparreau) | Dial Indicator Fan Mount| :grey_question: | :grey_question:| :grey_question: |  :grey_question:|:grey_question: | :grey_question: |
| |[Mains Plug Panel Parametric](./Sparreau) |Scalable mains plug panel with small modifications | :grey_question: |:heavy_check_mark:| :grey_question: | :heavy_check_mark:|:heavy_check_mark:| :grey_question: |
| |[Z Idler Frame Extra Tab](./Sparreau) |An extra tab added to the Z idler to prevent sagging / rotation | :grey_question: | :x:| :grey_question: | :heavy_check_mark: |:x: | :grey_question: |
| sporadic | [10x15 Chain Z Mounts](./sporadic/10x15_Chain_Z_Mounts) | End Z mounts for 10x15 Befenybay Drag Chain | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :grey_question: | :grey_question: |
| | [30A Relay Mount](./sporadic/30A_Relay_Mount) | Mount for a 30A relay module available on Amazon | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Dual RS-25 Mount](./sporadic/Dual_RS-25_Mount) | Dual mount for side by side RS-25 supplies | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Dual SKR 1.3 Mounts](./sporadic/Dual_SKR_1.3_Mount) | Dual mounts for side by side SKR 1.3 controllers with fan and fanless options  | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
| | [Wago 221-415 Mount](./sporadic/Wago_221_Mounts) | Mount for a single Wago 221-415  | :grey_question: | :grey_question: | :grey_question: |  :heavy_check_mark: | :heavy_check_mark: | :grey_question: |
|Stephan |[M12 Probeholder](./Stephan/M12_probeholder) | Drop in replacement of the stock probe to a M12| :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: | :grey_question:| :grey_question: |
| |[BlTouch Mount](./Stephan/bltouch_mount) | Drop in replacement of the stock probe to a BLTouch| :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: | :grey_question:| :grey_question: |
|steve450 |[Corner Brackets](./steve450/Voron2.1) | Corner brackets preventing rotation of the extrusions, and stiffening the joints.  Also covers the Z-belt hole for improved aesthetics| :grey_question: | :grey_question:| :grey_question: |  :heavy_check_mark:|:grey_question: | :grey_question: |
| synfinatic|[Duet Fan Mount](./synfinatic/Duet-Fan-Mount) |Duet/Duex fan mount with air vents directly above the steppers to increase airflow | :grey_question: |:heavy_check_mark: | :grey_question: |  :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| |[E-Stop Switch](./synfinatic/E-Stop-Switch) |Mount for emergency button attached to the top of the printer | :grey_question: |:x: | :grey_question: |  :heavy_check_mark:|:grey_question: | :grey_question: |
| | [Filament DryBox](./synfinatic/Filament-DryBox)|Mount for filament drybox attached to the side of the printer | :grey_question: |:x: | :grey_question: |  :heavy_check_mark:|:grey_question: | :grey_question: |
| |[LED Mount](./synfinatic/LED-Mount) |Mount for LED lightbars | :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| | [PS Extra Bracket](./synfinatic/PS-Extra-Bracket)|Extra bracket to keep the power supply in place | :grey_question: |:grey_question: | :grey_question: | :grey_question: |:grey_question: | :grey_question: |
| |[RJ45 Mount](./synfinatic/RJ45-Mount) |Mount for an ethernet coupler to extend / move the ethernet plug somewhere more convenient | :grey_question: |:grey_question: | :grey_question: | :grey_question: |:grey_question: | :grey_question: |
|Trippinonaduck |[Switch Holder](./Trippinonaduck/SwitchHolder) | Holder for Anit-Vandal Switches mounted in skirt holes  | :grey_question: | :x:| :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
| |[LRS-75-5](./Trippinonaduck/LRS_75_5) | Mount for LRS-75-5 Power Supply  | :grey_question: | :heavy_check_mark:| :grey_question: | :heavy_check_mark: | :heavy_check_mark:| :grey_question: |
|warriorofwire | [Openbuilds Drag Chain 2.1](./warriorofwire/openbuilds_drag_chain_2.1)|Off-the-shelf, cheap, snap opening drag chain for gantry wiring and protecting wires down to the deck | :grey_question: |:x: | :grey_question: |  :heavy_check_mark: | :x: | :grey_question: |
| | [Openbuilds Drag Chain 2.2](./warriorofwire/openbuilds_drag_chain_2.2)|Off-the-shelf, cheap, snap opening drag chain for gantry wiring and protecting wires down to the deck | :grey_question: |:x: | :grey_question: |  :x: | :heavy_check_mark: | :grey_question: |
| | [Direct Drive BMG-m mount](./warriorofwire/bmg_direct_drive)| Open toolhead mounting plans for Bondtech BMG-m and Mosquito direct drive combo| :grey_question: |:grey_question: | :grey_question: | :heavy_check_mark:|:heavy_check_mark: | :grey_question: |
| wile.e.coyote| [Coroplast Support](./wile.e.coyote)|Support for the coroplast to prevent sagging | :grey_question: | :x: | :grey_question: | :heavy_check_mark: |:grey_question: | :grey_question: |
| |[Dual Buck Bracket](./wile.e.coyote)   |Mounting bracket for 2 buck converters | :grey_question: | :heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| |[Nozzle Scrubber Mount](./wile.e.coyote) | Mount for brass brush. Used for cleaning nozzle before printing | :grey_question: |:x: | :grey_question: |  :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| | [Wago Mounts](./wile.e.coyote)  | Different mounts for Wago connectors | :grey_question: | :heavy_check_mark: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |
| xbst_ | [PCB LED Holder](./xbst_/LED_Holder)| Very simple mount for some (?) PCB LED Bars | :grey_question: | :grey_question: | :grey_question: | :heavy_check_mark: |:heavy_check_mark: | :grey_question: |

---
