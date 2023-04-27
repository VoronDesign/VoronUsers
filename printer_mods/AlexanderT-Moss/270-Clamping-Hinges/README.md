
 # 270 Degree Clamping Hinges #

 The design of this hinge is based on [_chrisgonzales_](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/chrisrgonzales/270_degree_hinge) already incredible 270 degree hinges. The main goal of this remix was to have the front panels mounted in a way that **didn't use any VHB tape or holes that needed to be drilled into the acrylic**, and of course, use minimal amounts of additional hardware. After many design iterations and improvements I came to a solution.

 ### Important Notice ###

 If you're going for a super sealed enclosure, then these hinges are not for you. In testing ( at the moment with only 2 hinges per panel ) I found after opening and closing the doors several times, they would slowly lose alignment ( only by fractions of a mm ) and just need a little push to re-align so the panels would close properly and not collide. This means you'll probably have a gap of a couple mm between the panels at the front if you don't want to be driven crazy by them not staying super aligned. A potential fix would be to print 3 hinges for each panel but I am yet to test this although I strongly recommend you do use 3 hinges per panel if you have a printer larger than 250x250 ( what I'm testing them on ).

### Update Log ###

**11.12.21** - Made subtle changes to dimensions to hold panels closer together whilst having them fully seated in the clamps for maximum strength, also changed recommended print settings for stronger face_plate_bottom.stl.

 ### Using Foam Tape ###

 At the moment I have only tested using 3mm thick foam and that works well, you may be able to get away with 4mm foam, but for anything thicker, you'll need to modify part of the hinge to accommodate this.

 ### Keeping The Doors Shut ###

 I am currently using clamps designed by [_v6cl_](https://github.com/v6cl/My-Voron2.4-Customs/tree/main/Panel_Locker)

 ### Different Styles Of Face Plates ###

 The file names match up with the digrams below.

 |                       Face Plate No Logo                        |                    Face Plate Embossed Logo                     |                   Face Plate Through Logo                   |
 | :-------------------------------------------------------------: | :-------------------------------------------------------------: | :---------------------------------------------------------: |
 | ![Logo-Variation-0.png](./Images/Logo-Variation-0.png?raw=true) | ![Logo-Variation-1.png](./Images/Logo-Variation-1.png?raw=true) | ![Logo-Variation-2](./Images/Logo-Variation-2.png?raw=true) |

 ## BOM - Per Hinge ##
 **Printed Parts**
 ```
 face_plate_top.stl     [x1]
 face_plate_bottom.stl  [x1]
 side_mount.stl         [x1]
 ```
 **Additional Hardware**
 ```
 M3 x 8mm SHCS          [x5]
 M3 Hex Nuts            [x2]
 M3 T-Nut               [x1]
 ```
 ## Printing ##

 I recommend following the default settings for Voron Parts, and none of the parts require support material.
 ```
 Layer Height       : 0.2 mm
 Extrusion Width    : 0.4 mm
 Infill             : 40 % ( 100% For face_plate_bottom.stl )
 Perimeters         : 4
 Solid Top/Bottom   : 5
 Supports           : No
 Brim               : Optional
 ```
 ## Assembly ##

 ![Clamping-Hinges-Assembly.gif](./Images/270-Clamping-Hinges-Assembly.gif?raw=true)
 _Better photos will come in good time ;)_

 1. Attach the _face_plate_bottom_ to the _face_plate_top_ using 2x M3 x 8 mm Bolts and 2x Hex Nuts - Keep the bolts loose for now
 2. Attach the faceplate assembly to the _side_mount_ using 2x M3 x 8 mm Bolts - Again, don't overtighten these so the hinge moves easily
 3. Install the finished hinge assembly to the frame using 1x M3 T-Nut and 1x M3x8mm Bolt - Position them now to your liking
 4. Once all the hinges are on the frame. Slot in a panel on one side, before tightening down the M3x8mm Bolts in the faceplate assembly. And repeat for the other panel.
 5. Loosen the panel's clamps and position accordingly, repeat for the other panel.
 6. For the handles, I just re-used the correct ones that _chrisgonzales_ made :).

 ## Installed On My 2.4 ##

 ![IMG_0310.PNG](./Images/IMG_0310.png?raw=true)
 _Better photos will come in good time ;)_
