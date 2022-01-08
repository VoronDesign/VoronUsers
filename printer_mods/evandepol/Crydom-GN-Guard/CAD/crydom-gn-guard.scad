

lh=0.2;

wt=2;
width=44.6;

$fn=60;

difference() {
    union() {
        difference() {
            translate([-width/2-wt,-6-3,0]) {
                cube([wt*2+width,15,10]);
            }
            translate([-width/2,-6.01-3,wt]) {
                cube([width,15-wt,10]);
            }
            translate([-width/2,-6.01-3,wt+5]) {
                cube([width,15.2,10]);
            }
        }
        translate([-6,0,0]) {
            cube([12,6,21+wt]);
        }
        cylinder(d=12,h=21+wt);
    }
    union() {
        intersection() {
            union () {
                translate([-5,0,-0.01]) {
                    cube([10,9.1,21+lh*2]);
                }
                translate([0,0,-0.01]) {
                    cylinder(d=10,h=21+lh*2);
                }
            }
            union() {
                translate([-10,-10,-0.01]) {
                    cube([20,20,21]);
                }
                translate([-5,-5.5/2,-0.01]) {
                    cube([10,5.5,21+lh]);
                }
                translate([-5.5/2,-5.5/2,-0.01]) {
                    cube([5.5,5.5,21+lh*2]);
                }
            }
        }
        translate([0,0,-0.01]) {
            cylinder(d=5.5,h=21+wt+0.02);
        }
        for (x=[-15.5,12.5]) {
            translate([x,3,-9.5]) {
                scale([0.1,-0.1,0.1]) {
                    linear_extrude() {
                        import("lightning.svg");
                    }
                }
            }
        }
    }
}