/* IMPORTANT NOTE:  To render this file, the Voron Fonts "Play" must be installed on your computer and paths below edited to match.
*/

$fn=100;
use <C:/Users/Toothpick/AppData/Local/Microsoft/Windows/Fonts/Play-Bold.ttf>
use <C:/Users/Toothpick/AppData/Local/Microsoft/Windows/Fonts/Play-Regular.ttf>

module witchwire_base(){
union(){
difference(){
union(){
linear_extrude(height=8, scale=[1,0.8])
polygon([[80,16],[80,-16],[-80,-16],[-80,16]]);

// end hexagons
translate([-86,0,0])
cylinder(h=8, r1=24, r2=20, $fn=6);
translate([86,0,0])
cylinder(h=8, r1=24, r2=20, $fn=6);

}
// witchwire lettering
translate([0,0,-0.1])
linear_extrude(height=9, convexity=10)
text("WITCHWIRE", font="Play: style=bold", size=18, halign="center", valign="center");

// voron lettering
translate([86,-13.6,7])
linear_extrude(height=2)
text("VORON", font="Play: style=bold", size=4.4, halign="center", valign="center");

// logo indents
translate([-86,0,7])
cylinder(h=2, r=17.4, $fn=6);
translate([86,2.7,7])
rotate(30)
cylinder(h=2, r=13, $fn=6);

// back heat-sink holes
translate([-86,12,-1])
cylinder(h=5.4, r=4.7/2);
translate([-86,-12,-1])
cylinder(h=5.4, r=4.7/2);
translate([86,12,-1])
cylinder(h=5.4, r=4.7/2);
translate([86,-12,-1])
cylinder(h=5.4, r=4.7/2);
} // end difference

// close "R" gap
translate([46.16,0,4])
cube([2.8,6,8], center=true);
}
}

// uncomment below to render STL
//color("DimGray")
//witchwire_base();
