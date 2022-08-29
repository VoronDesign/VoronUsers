# Quick Release Panel Clips

Voron-style panel clips inspired by Annex-Engineering Denali printer's clips (https://github.com/Annex-Engineering/Denali/tree/master/STLs/Panel_Mounting/Side_Top_and_Rear_Panel_Quick_Release)

![](./images/clips.jpg)

I found Denali's clips too bulky and not really fitting to the overall style of Voron printer, so I designed these.

## Parts Required

None! You can even free up a few M8 screws and hammerhead nuts you are currently using.

## Printing

Print parts with standard Voron spec:
* 0.2 mm layer
* 0.4 mm extrusion width
* 4 perimeter walls
* 5 top/bottom layers
* 40% infill (grid/gyroid/honeycomb/triangle/cubic)

For each side panel you will need:
* 2x clip_xxx_corner_a.stl
* 2x clip_xxx_corner_b.stl
* 4x clip_xxx_midspan.stl
* 12x [a]_key.stl

For back panel you will need:
* 2x clip_xxx_corner_a.stl
* 2x clip_xxx_corner_b.stl
* 3x clip_xxx_midspan.stl
* 11x [a]_key.stl

For top panel you will need:
* 4x clip_xxx_corner_top.stl
* 4x clip_xxx_midspan.stl
* 12x [a]_key.stl

where xxx is the combined width of your panel and a foam tape.

## Assembly

Just press keys into the clips. Align keys with slots in aluminum extrusions, push the clip in and turn the keys 1/4 turn clockwise.

![](./images/voron.jpg)


## Customizing clips to your panel thickness

In case one of included thicknesses is too tight and the next is too lose, please feel free to create a custom set of clips.
Included .step file has all the clips for 5mm panel thickness. It is the dimension between 2 surfaces: one that contacts the frame and one that contacts the panel:

![](./images/dimension.png)

Since overall thickness of the clip is critical for the key fitment, the easiest way to adjust the thickness is to raise the surface that pushes on the panel:

![](./images/customize.png)

Raise the surface by (5 - desired_thicness).

Another option is to make the clips themselves thinner. Keep in mind that you will need to shorten the key by the same length in the "neck" region.



Enjoy!
