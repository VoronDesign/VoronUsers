$fn=100;

// Note: can change x,y scale below if fit needs to be adjusted
module sw_badge() {
translate([0,0,3])
scale([2.16,2.16,1])
rotate([0,180,0])
linear_extrude(height=2, convexity=10)
import("voronlogofromscratch.dxf");
}

// uncomment below to render STL
//color("RED")
//sw_badge();