/* IMPORTANT NOTE: This file is not intended to be rendered to an STL.  NOT FOR PRINTING - merely provided to see what the finished object looks like (sort of).  See other .scad files for rendering to print.  (An STL of this would likely have mesh problems due to the 0.14mm gap I included below for rendering purposes.)

   Also: See note in WITCHWIRE_base.scad about fonts.
   
   BOM: (4) heat-set inserts. (4) M3 x 8mm BHCS
*/

$fn=100;
use <C:/Users/Toothpick/AppData/Local/Microsoft/Windows/Fonts/Play-Bold.ttf>
use <C:/Users/Toothpick/AppData/Local/Microsoft/Windows/Fonts/Play-Regular.ttf>

use <backplate_and_drillguide.scad>
use <WITCHWIRE_base.scad>
use <SW_badge.scad>
use <Voron_badge.scad>

color("Red")
backplate_DG();

color("DimGray")
translate([0,0,2.14]) // (raised a bit extra so red shows through)
witchwire_base();

color("Red")
translate([-86,0,10.14])
sw_badge();

color("Red")
translate([86,2.7,10.14])
voron_badge();

