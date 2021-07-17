$fn=100;

module backplate_DG(){
difference(){
 union(){
linear_extrude(height=3, scale=[1,0.92])
polygon([[80,19.2],[80,-19.2],[-80,-19.2],[-80,19.2]]);

// end hexagons
translate([-86,0,0])
cylinder(h=3, r1=28, r2=26, $fn=6);
translate([86,0,0])
cylinder(h=3, r1=28, r2=26, $fn=6);
}   

translate([0,0,2])  
union(){
linear_extrude(height=2, scale=[1,1.1])
polygon([[80,16],[80,-16],[-80,-16],[-80,16]]);

// end hexagons
translate([-86,0,0])
cylinder(h=2, r1=24, r2=26, $fn=6);
translate([86,0,0])
cylinder(h=2, r1=24, r2=26, $fn=6);
}
// screw holes
translate([-86,12,-1])
cylinder(h=5, r=3.2/2);
translate([-86,-12,-1])
cylinder(h=5, r=3.2/2);
translate([86,12,-1])
cylinder(h=5, r=3.2/2);
translate([86,-12,-1])
cylinder(h=5, r=3.2/2);

}

}
// uncomment to render STL
//color("Red")
//backplate_DG();