# **Voron 2.4 300 Front Magnet Panel Mounting System**

Mounting system for attaching a panel to the Voron 2.4 frame using magnets, primarily intended for the front panel.

![Alt text](Images/CoverMagnetMount.png "Cover Magnet Mount")
![Alt text](Images/RailMagnetMount.png "Rail Magnet Mount")


###### BOM:

1. Magnets (quantity 64): https://www.kjmagnetics.com/proddetail.asp?prod=B842
2. Heat set inserts (quantity 24): https://smile.amazon.com/gp/product/B077CJV3Z9
3. M3 T-nuts (quantity 24), no specific brand required, I used the type I could roll into the frame.
4. M3 x.5mm x 6mm button head screws (quantity 44)
5. 1 panel (I like polycarbonate panels for ease of drilling). I would suggest having it cut short by about 5mm on height and width of the Voron BOM panel size. This will avoid issues with tolerance attaching/removing the panel. The panels can not exceed the standard Voron BOM panel size, if they do, they will not fit into the area inside the rail magnet mounts.
6. 1/4 inch wide x 1/8th inch thick closed cell foam. This can be adhered to the panel or to the frame and will create an airtight seal of the panel to the frame when the magnets of the outer panel cover pull towards the magnets on the rail mounts.
  

###### Instructions

STL files are for the 300 size 2.4 build. In the Fusion 360 file, the design was created using parametric modeling and has a lot of predefined parameters that you can adjust to fit to your needs.

If you use different size magnets or heat set inserts you'll want to adjust the parameters for those dimensions.

The design is two parts, the magnet rail mounts which attach to the extrusion and hosts one set of magnets. 
The outer part are the panel covers which contain the remaining set of magnets and attach to the panel using M3 screws.

STL file naming: TR - top right, TL - top left, BR - bottom right, BL - bottom left

1. Install T-nuts into extrusion. Screw in the printed magnet rail mounts into the t-nuts using the M3 x 6mm screws. 
2. Install magnets into printed magnet rail mount recessed holes. They are sized to be somewhat of a tight press fit but I used super glue to secure the magnets in place and would recommend it.
3. For the printed panel covers, install the heat set inserts into the round holes.
4. Install the magnets into the panel covers, you can also choose to glue these in place but the magnets do hold better in these as they are recessed deeper to reduce pull force, so it may not be as necessary. You could always try without glue and then glue later if you decide you want to.
5. Drill out the holes in the panel with a bit just wide enough for the threaded part of the M3 bolt, aligning them to the holes in the panel covers. Attach the panel to the covers with the M3 x 6mm screws, fastening into the previously embedded heat set inserts in the panel covers.

###### To-Do/Improvements

1. Create a drilling template for the panel M3 holes 
2. Find the 'ideal' magnet which has just enough pull-force, the current magnets are a little overpowered and thus need to be recessed slightly in the panel cover design to compensate. This will likely be a slightly smaller/lower grade magnet than the one in the above BOM. The count of magnets may also be able to be reduced but I was trying to ensure an airtight seal all around so I overcompensated. 
3. Reduce strain/potential for cracking on the panel (more important for acrylic I think) by designing a screw plate for the panels that will live on the opposite side of the panel inside the enclosure to spread out compression force of the screws.
4. The panel covers have a gap behind them to allow removal with fingers but handles could also be useful.
5. Create 250 and 350 versions of the STL files
  