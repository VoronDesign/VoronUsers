$fn=100;

// Note: can change x,y scale below if fit needs to be adjusted
module voron_badge(){
scale([1.62,1.62,1])
rotate(30)
linear_extrude(height=2, convexity=10)
import("voronlogofromscratch.dxf");
}

// uncomment to render STL
//color("Red")
//voron_badge();