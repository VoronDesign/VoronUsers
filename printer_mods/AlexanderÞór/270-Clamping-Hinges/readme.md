# 270 Degree Clamping Hinges #

This hinge design builds off of the already incredible 270 degree hinges created by [_chrisgonzales_](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/chrisrgonzales/270_degree_hinge). The main design goal was to have the front panels mounted in a way that **didn't use any VHB tape or holes that needed to be drilled into the acrylic**, and of course, use minimal amounts of additional hardware. After many design iterations and improvements I came to a fairly simple soloution.

### Important Notice ###

If your going for a super sealed enclosure, then these hinges are not for you. In testing ( at the moment with only 2 hinges per panel ) I found after opening and closing the doors serveral times, they would slowly lose alignemnt ( only by a fraction of a mm ) and just need a little push to re-allign so the panels would close properly and not collide. This means you'll probably have a gap of a couple mm between the panels at the front if you dont wan't to be driven crazy by them not staying super alligned. A potential fix would be to print 3 hinges for each panel but I am yet to test this although I strongly recommend you do if your have a printre larger than 250x250 ( what I'm testing them on ).

### Using Foam Tape ###

At the moment I have only tested using 3mm thick foam and that works well, you may be able to get away with 4mm foam, but for anything thicker you'll need to modifiy part of the hinge to accomadate this.

## BOM - Per Hinge ##
**Printed Parts**
```
face_plate_top.stl     [x1]
face_plate_bottom.stl  [x1] - This part can be printed in an accent colour for more coolness ;)
side_mount.stl.        [x1]
```
**Additional Hardware**
```
M3 x 8mm SHCS          [x5]
M3 Hex Nuts            [x2]
M3 T-Nut               [x1]
```
## Assembly ##

![Clamping-Hinges-Assembly.gif](https://github.com/Alexander-T-Moss/VoronUsers/blob/master/printer_mods/AlexanderÞór/270-Clamping-Hinges/Images/270-Clamping-Hinges-Assembly.gif?raw=true)

![IMG_0310.PNG](https://github.com/Alexander-T-Moss/VoronUsers/blob/master/printer_mods/AlexanderÞór/270-Clamping-Hinges/Images/IMG_0310.png?raw=true)

1. Attach the _face_plate_bottom_ to the _face_plate_top_ using 2x M3x8mm Bolts and 2x Hex Nuts - Keep the bolts loose for now
2. Attach the face plate assembly to the _side_mount_ using 2x M3x8mm Bolts - Again, don't overtighten these so the hinge moves easily
3. Install the finished hinge assembly to the frame using 1x M3 T-Nut and 1x M3x8mm Bolt - Position them now to your liking
4. Once all the hinges are on the frame. Slot in a panel on one side, before tightening down the M3x8mm Bolts in the face plate assembly. And repeat for the other panel.
5. Loosen of the panels clamps and postion accordingly, repeat for the other panel.
6. For the handles, I just re-used the correct ones that _chrisgonzales_ made :). 
