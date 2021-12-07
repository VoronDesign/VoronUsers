bezel = 0.4;
bezel_h = calculate_bezel(bezel);
screen_bezel = 4;
screen_bezel_h = calculate_bezel(screen_bezel);
prototype = false;

standoff_screw_diameter = 2.1;
standoff_outer_diameter = standoff_screw_diameter + 2;

difference() {
    union() {
        stock_skirt();
        translate([-(27.5+10+2)/2, 0.5, bezel])
            oled_holder_positive();
    }
    translate([-28.6/2, 3, 2])
        oled_holder_negative();
    if (prototype) {
        translate([25, -10, -10])
            cube([100,50,50]); 
        mirror([1,0,0])
        translate([25, -10, -10])
            cube([100,50,50]);
    }
    translate([-30,1,-0.01])
        scale([0.5, 0.5, 1])
            import("Cowling_LOGO_ONLY_x1.STL");
}

module stock_skirt() {
    translate([-110,-41.5,0])
        import("Skirt_x3.STL");
    mirror([1,0,0])
        translate([-110,-41.5,0])
            import("Skirt_x3.STL");
}

module oled_proxy() {
    translate([5.5/2,6.37,-1])
        color("black")
            cube([22,11,1]);
    difference() {
        color("green")
            cube([27.5, 27.8, 1.2]);
        translate([2,2,-0.4])
            cylinder(d = standoff_screw_diameter, h=2, $fn=30);
        translate([2,25.8,-0.4])
            cylinder(d = standoff_screw_diameter, h=2, $fn=30);
        translate([25.5,25.8,-0.4])
            cylinder(d = standoff_screw_diameter, h=2, $fn=30);
        translate([25.5,2,-0.4])
            cylinder(d = standoff_screw_diameter, h=2, $fn=30);

    }
}

module oled_holder_positive() {
    minkowski() {
        cube([27.5+10+2-bezel_h, 27.8+6+2-bezel, 3-2*bezel]);
        rotate([0,45,0])
            cube([bezel_h,bezel_h,bezel_h]);
    }
    translate([7.95,6,2])
        screen_standoff();
    translate([7.95,29.8,2])
        screen_standoff();
    translate([31.45,29.8,2])
        screen_standoff();
    translate([31.45,6,2])
        screen_standoff();
}

module oled_holder_negative() {
    difference() {
        union() {
            cube([28.5, 31, 10]); // PCB cutout
            translate([2.5,3.5,-1])
                cylinder(d = standoff_screw_diameter, h = 4, $fn = 30);
            translate([2.5,27.3,-1])
                cylinder(d = standoff_screw_diameter, h = 4, $fn = 30);
            translate([26,27.3,-1])
                cylinder(d = standoff_screw_diameter, h = 4, $fn = 30);
            translate([26,3.5,-1])
                cylinder(d = standoff_screw_diameter, h = 4, $fn = 30);
        }
        translate([2.5,3.5,-1])
            screen_standoff();
        translate([2.5,27.3,-1])
            screen_standoff();
        translate([26,27.3,-1])
            screen_standoff();
        translate([26,3.5,-1])
            screen_standoff();
    }
    // Screen cutout
    translate([3.5/2-screen_bezel,6.37,-12])
        minkowski() {
            cube([25-screen_bezel_h,14-screen_bezel_h,0.1]);
            minkowski() {
            rotate([0,45,0])
                cube(screen_bezel_h);
            rotate([45,0,0])
                cube(screen_bezel_h);
            }
        }
}

module screen_standoff() {
    difference() {
        cylinder(d = standoff_outer_diameter, h = 3, $fn = 30);
        cylinder(d = standoff_screw_diameter, h = 4, $fn = 30);
    }
}

function calculate_bezel(bezel) = ((bezel*bezel)*2)^0.5;