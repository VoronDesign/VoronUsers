Many thanks to the VzBot and the Voron team for making excellent printers.

# VORON-2.4-TOP-MOUNT-X-RAIL
VORON-2.4-TOP-MOUNT-X-RAIL

# Work In Progress / ToDos
- 2023-01-18 - v3 uploaded - tested to be epic
- Many things under development

# Features
- Top Mount X Rail
- Simple install just new xy parts only. and modified VZPrintable tool head for the Dragon UltraHighFlow.
- No major belt changes just the idler belts are now routed to rear of x axis beam. No cuttin no trimming of belts required.
- Ultra lightweigth design with high accelerations. See Input Shaper graphs below.
- 682gram Total X-Rail Full System Install.
 ![](images/v3/682g.png)
- Bed Printable area 336x 324y (TO DO:the bed can be pushed back ~4mm to increase ethe Y to 328ish)
 ![](images/336x324y.jpg)

# Requriments
- Sensorless homing. Recommend Y home 1st with 100-150mm back off. Home X. Center over Z EndStop. Home Z.
  - https://docs.vorondesign.com/community/howto/clee/sensorless_xy_homing.html
- klicky prob
  - https://github.com/jlas1/Klicky-Probe
  - My Custom adjustable KlickyProbe gantry mount that suits custom heights of different toolhead FanDucts in the STL folder.
- Umbelical or some kind of no cable chain system.
- Move the Z-Axis chain under the gantry.
  - https://www.printables.com/model/279739-voron-can-bus-z-chain-move

# Inspired By
- https://github.com/VzBoT3D/Vz-Printhead-Printed
- https://github.com/VzBoT3D/VzBoT-Vz330

# InputShaper
![](images/input_shaper/x.png)
![](images/input_shaper/y.png) 

# V3 Images - Current Installation on printer

![](images/v3/l_front.png) 

![](images/v3/l_side.png) 

![](images/v3/l_iso.png) 

![](images/v3/v3iso.png) 

![](images/v3/v3back.png) 

![](images/v3/v3right.png) 

# YouTube

- Watch the videos for my build journey

[![youtube journey](https://img.youtube.com/vi/8w1qv4k_UrQ/0.jpg)](https://www.youtube.com/watch?v=8w1qv4k_UrQ)

[![youtube preview](https://img.youtube.com/vi/LdVHs1veAIQ/0.jpg)](https://www.youtube.com/watch?v=LdVHs1veAIQ)

# Known Issues
- Tool head fan and duct at the rear slightly collides with gantry corners in the rear left and right.
  - Solution is to implement heat-set-nuts on the fan mount to save ~4mm.
  - Increase the XY mounts to collide with the gantry sooner to allow more padding space for the hotend.
  - temporary Homing Y 1st with 150mm back off then X home.
![](images/issues/collide1.jpg)
![](images/issues/collide2.jpg)

# Resolved Issues
 - Z-Chain under the gantry extrusion is crushed especially with short hotends. Custom length hotend extension can be required. I also designed a new bed frame extrusion mount to allow the zChain to squeeze between. See STL downloads.
![](images/zchain/zchain3.png)
![](images/zchain/zchain2.png)
![](images/zchain/zchain1.jpg)

# What I Working On
- gantry collision working on a belt clip that pads out the frame to preventthe 5015 fan from colliding. estimate Y reduction of 8mm
![](images/v4/front_belt.png)
![](images/v4/top_belt.png)
![](images/v4/front_limit_stop.png)
![](images/v4/front_limit_stop_2.png)

# Feedback
TopMountXRail@jc84.com
julianjc84#7938
