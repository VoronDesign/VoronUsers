# Carbon Fiber X Extrusion for MGN12
<p align="center">
    <img src="Images/Main.jpg" alt="Running" class="center" style="width:800px;"/>
</p>

## Overview
Everyone loves Carbon Fiber. It weighs 25% as much as your current X-Extrusion and it looks cool. Probably gives your printer +5 Horsepower.

Go full weight weenie and replace your idler bolts/pins with carbon fiber too. Carbon fiber everywhere!

## BOM
Required:
- 20x20x18mm Carbon Fiber Square Tube
    - ⚠️Do not buy pullstruded tube for this⚠️
    - [DroneBuildz (US)](https://dronebuildz.com/collections/flight-controller/products/carbon-fiber-square-tube-grcf-1000mm)
    - [AliExpress](https://www.aliexpress.com/item/32946654825.html)
- 6x M5 tnuts
    - [Amazon](https://www.amazon.com/gp/product/B07FPLZXTF)
- 8+ M3 Flanged Locknuts
    - [Amazon](https://www.amazon.com/gp/product/B07XXRLMBB/)
- 8+ M3x10 Socket Head Cap Screws
- Blue (Medium) Loctite
- Mask or Respirator. Silicosis isn't fun.

Optional:
- 2x M3 Heatset Inserts for Cable Chain mount
    - TODO: Instructions for drilling holes for these.
- 5mm OD Carbon Fiber Tube or Rod
    - 4x cut to 40mm

## Results
The weight difference between a stock dual MGN9 300mm v2.4 X extrusion w/ Ti backer and the Carbon Fiber MGN12 with Pins Mod is almost 300g.
<p align="center">
    <img src="Images/weights.jpg" alt="Weight Comparsion" class="center" style="width:800px;"/>
</p>

## Instructions

### Printing instructions
1. Normal Voron print settings. You can drop the infill percentage on the inserts if you want as the 4 perimeters are what take the load.
2. Print a set of Inserts
    - If you're going to use cable chains, be sure to print the correct insert with support for heatsets.
3. Print a set of XY joints.
    - Use the Pinned set for the Hartk mod or if you're going to use carbon fiber pins.
    - You can't reuse your existing ones as they have bits that are designed to go into the slot of a 2020 extrusion.
4. Print 2-3 [MGN12 rail positioning tools](https://github.com/VoronDesign/Voron-Trident/blob/main/STLs/Tools/MGN12_rail_guide_x2.stl).

### Insert Assembly
1. Slide an M5 tnut into each hole.
2. With an M5 bolt holding the tnut in place over the hole, use tools to spin the tnut 90 degrees.
3. (Optional) Insert the M3 heatsets if you are using them.

### XY Joint Holes
1. Cut your CF tube to size. For a 300mm sized 2.4/Trident, that is 380mm.
    - Unless you're very confident in your ability to cut square, cut it a little long and use a sanding block to get it to the correct length.
2. Use a straight edge to identify the flatest face.
    - Mark this face, it will be the one the rail is mounted to.
    - TODO: Insert image.
3. Apply blue painters tape to the top and bottom ends of the tube.
4. Mark and measure 7.65mm and 23.15mm from both ends on the top of the tube.
    - Mark and measure 7.65mm from both ends on the bottom of the tube.
5. Find and mark the center of the tube on the top and bottom.
    - You can use your rail and the centering tools to do this.
    - TODO: Insert image.
6. ⚠️Put on your mask! Don't inhale carbon dust, it is not good for you.⚠️
7. Using a small (~1/8") drill bit in a drill press, drill pilot holes at your marked points.
8. Drill your final holes using an oversized (~1/4") drill bit.
    - Using an oversized drill bit will give you wiggle room in case your measurements are a bit off.
    <p align="left">
    <img src="Images/XY_Drill.jpg" alt="Weight Comparsion" class="center" style="width:800px;"/>
    </p>
9. (Optional) If using cable chains, use your insert as a template for where to drill the mounting holes.
    - Use an 1/8" drill bit for these holes.

### Rail Holes
1. Install the inserts and attach your XY joints, temporarily. Do not install the idlers and bolts/pins.
2. Apply blue painters tape to the face of your tube.
3. Using the centering tools, set your MGN12 rail on the face of the tube, centered between the two sides.
    - TODO: Insert image.
4. Either mark your holes or use the rail itself as a drill guide.
    - You only need a bolt in every other hole. If you start from each side, you'll end up with two side by side in the middle on a 350mm rail.
5. Drill your holes with a 1/8" drill bit. No need for a pilot hole.
6. Clean up.
    - Remove rail
    - Remove XY Joints
    - Remove inserts
    - Remove all tape

### Attaching Rail
1. Using the centering tools, set your MGN12 rail on the face of the tube and align with the drilled holes
    - TODO: Insert image.
2. Insert nuts into the Nut Holder and press them firmly into it.
    - TODO: Insert image.
3. Slide the Nut Holder and Spacer into the tube, aligning them with the drilled holes.
4. Using Blue Loctite, screw in M3x8 bolts and tighten.
5. Remove the spacer and press down on the nut holder. It should pop off the back of the nuts.
    - Using a hex driver or something flat may be needed to pop it off the last nut.
    - If you need to remove your rail, you will be able to use the nut holder and the spacer.
6. Repeat for the other side of the rail.
7. You're done!
    - TODO: Insert image.

### Carbon Fiber Pins
1. TODO: yes

## Questions
Reach me in Voron's [Discord](https://discord.gg/xgXWctB) @aTinyShellScript#3121 if you have any questions.

## Images