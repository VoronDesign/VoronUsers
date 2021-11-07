

rotate([0,90,0]) clamp_2020_multi4();

//translate([0,20,0]) rotate([0,90,0]) clamp_2020_multi4(false);


length = 50;
tab    = 20 - 5;
tab_t  = 2;

width  = 10;

hole   = 3.2;
head   = 6.5;

taper=0.4*2;


$fn=60;

module clamp_2020_multi4(screw=true) {
    difference() {
        union() {
            hull() {
                translate([-width/2,0,0]) {
                    if (screw) cube([width,tab_t,tab]);
                }
                translate([-width/2,-5+taper,0]) {
                    cube([width,5-taper+tab_t,5]);
                }
                translate([-width/2+taper,-5,0]) {
                    cube([width-taper*2,5+tab_t,5]);
                }
            }
            translate([-width/2,-5,-length]) {
                hull() {
                    translate([0,taper,0]) {
                        cube([width,5-taper+tab_t,length]);
                    }
                    translate([taper,0,taper]) {
                        cube([width-taper*2,5+tab_t,length-taper]);
                    }
                }
            }        
            translate([-width/2,0,10-(6-0.1)/2]) {
                if (screw) cube([width,tab_t+1.6,6-0.2]);
            }        
        }
        // bolt hole
        translate([0,5,10]) {
            rotate([90,0,0]) {
                cylinder(d=hole,h=5+5);
            }
        }
        translate([0,0,10]) {
            rotate([90,0,0]) {
                cylinder(d=head,h=15);
            }
        }
        // swivel nut hole
        hull() {
            translate([-3,tab_t,10-5]) {
                cube([6,0.1,10]);
            }
            translate([-4.5,tab_t+2,10-5]) {
                cube([9,0.1,10]);
            }
        }
        // cable recesses
        for (a=[0:1:3]) {
            translate([-width/2-1,-7,-(a+0.2)*13]) {
                rotate([0,90,0]) {
//                    cylinder(d=10.5,h=width+2);
                    cylinder(d=9,h=width+2);
                }
                translate([0.99,0,0]) {
                    rotate([0,90,0]) {
                        cylinder(d1=9+taper*2,d2=9,h=taper);
                    }
                }
                translate([width+1-taper,0,0]) {
                    rotate([0,90,0]) {
                        cylinder(d2=9+taper*2,d1=9,h=taper+0.01);
                    }
                }
                translate([width/2+1,0,0]) {
                    scale([(a % 2) == 0 ? -1 : 1,1,1]) {
                        difference() {
                            translate([0.2,0,0]) {
                                rotate([0,90,0]) {
                                    hull() {
                                        cylinder(d=15,h=4);
                                        translate([0,0,0.2]) {
                                            cylinder(d=15.5,h=3.5);
                                        }
                                    }
                                }
                            }
                            rotate([0,90,0]) {
                                cylinder(d=11.75,h=4.4);
                            }
                            rotate([0,90,0]) {
                                cylinder(d1=12.75,d2=11.75,h=0.5);
                            }
                            translate([3.9,0,0]) {
                                rotate([0,90,0]) {
                                    cylinder(d2=12.75,d1=11.75,h=0.5);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}