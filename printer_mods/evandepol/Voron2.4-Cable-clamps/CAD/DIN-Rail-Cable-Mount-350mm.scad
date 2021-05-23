

length = 190;   // TODO adjust for builds other than 350mm bed
width  = 15;
thick  = 3;
m3     = 3.2;
head   = 6.5;

$fn=60;

rotate([90,0,0])
cable_ramp(false);

module cable_ramp(cut=false) {
    difference() {
        union() {
            // ziptie mounts
            for (x=[20-3+25:25:length]) {
                translate([x,0,7.5]) {
                    difference() {
                        cube([6,width,7.5]);
                        translate([-0.1,10,10.4]) {
                            rotate([0,90,0]) {
                                cylinder(d=15,h=6.2);
                            }
                        }
                    }
                }
            }
            
            
            translate([0,0,7.5]) {
                difference() {
                    cube([length,width,thick]);
                    hull() {
                        translate([3.7,width/2-6/2,-1]) {
                            cube([16,6,10]);
                        }
                        translate([3.7,width/2-3/2,-1]) {
                            cube([18,3,10]);
                        }
                    }
                }
            }
            translate([0,0,7.5]) {
                cube([length+thick,thick,7.5]);
            }
            translate([length,0,7.5-thick-1.5]) {
                cube([thick,width,thick*2+1.5]);
            }
            translate([length-4,0,7.5-thick-1.5]) {
                cube([4.01,width,thick]);
            }
            if (cut) {
                hull() {
                    cube([thick,width,10]);
                    cube([5,width,7.5]);
                }
            } else {
                hull() {
                    cube([thick,width,15]);
                    cube([5,width,7.5]);
                }
            }
            hull() {
                translate([0,6,7.5]) {
                    //cube([50,width-12,0.1]);
                }
                translate([0,0,7.5]) {
                    cube([5,width,0.1]);
                }
                translate([0,4,0]) {
                    cube([5,width-8,7.5]);
                }
            }
            tw=3.5;
            for (y=[0,width-tw]) {
                // tab
                hull() {
                    translate([-1.5,y,3]) {
                        cube([2,tw,4]);
                    }
                    translate([0,y,2]) {
                        cube([0.1,tw,6]);
                    }
                }
            }
        }
        // bolt hole
        hull() {
            for (z=[5]) {
                translate([-2,width/2,z]) {
                    rotate([0,90,0]) {
                        cylinder(d=m3,h=10);
                    }
                }
            }
        }
        for (z=[5]) {
            xx=3.623;
            translate([2,width/2,z]) {
                rotate([0,90,0]) {
                    cylinder(d=head,h=xx+0.1,$fn=120);
                }
                // screw access
                /*
                translate([xx,0,0]) {
                    sphere(d=head,$fn=120);
                    rotate([0,75.5,0]) {
                        hull() {
                            cylinder(d=head,h=50.2,$fn=120);
                            translate([-6,0,0]) {
                                cylinder(d=head,h=50.2,$fn=120);
                            }
                        }
                    }
                }
                */
            }
        }
        // ziptie mounts
        for (x=[20-3+25:25:length]) {
            translate([x+1,0,7.5]) {
                difference() {
                    translate([-0.1,10,10.5]) {
                        rotate([0,90,0]) {
                            cylinder(d=19.5,h=4.2);
                        }
                    }
                    translate([-0.1,10,10.5]) {
                        rotate([0,90,0]) {
                            cylinder(d=16.5,h=4.2);
                        }
                    }
                }
            }
        }
        for (x=[7,19,31,55,80,105,130,155,180]) {
            translate([x,-10,11.5]) {
                cube([6,30,2.25]);
            }
        }
        for (x=[25+20-2.5:25:length-20]) {
            translate([x+15,width/2+1,7.4]) {
                rotate([0,0,30]) {
                    //cylinder(d=11,h=18,$fn=6);
                }
            }
        }

    }
}
