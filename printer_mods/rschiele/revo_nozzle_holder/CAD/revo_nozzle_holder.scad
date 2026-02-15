// E3D Revo Nozzle Holder for Voron Printers
// Copyright (C) 2026  Robert Schiele <rschiele@gmail.com>
//
// This work is licensed under the Creative Commons Attribution 4.0
// International License. To view a copy of this license, visit 
// http://creativecommons.org/licenses/by/4.0/.
//
// Alternatively, you are permitted to use this under
// any version of GPL license.

/* [customize] */
// Number of nozzles
num=6; // [2:10]
// Include E3D logo
logo=true;

/* [design details] */
// height of the holder
height = 28;
// distance of two nozzles
nozzledist = 17.5;
// width of the profile
profilewidth = 14;
// height of the profile
profileheight = 5;
// outer radius of rounding;
roundrad = 10;
// distance of rounding center to nozzle
rounddist = 2.5;
// chamfer size
chamfer = 1;

/* [technical] */
// minimum angle for a fragment
$fa=1;
// minimum size of a fragment
$fs=0.2;

module prof() for(i=[0, 1]) mirror([i, 0]) polygon([
    [0, 0],
    [0, profilewidth/2],
    [profileheight/2-chamfer, profilewidth/2],
    [profileheight/2, profilewidth/2-chamfer],
    [profileheight/2, 0]]);

module holder() for(j=[0, 1]) mirror([0, j, 0]) difference() {
    for(i=[0, 1]) mirror([i, 0, 0]) union() {
        translate([0, 0, height/2]) for(j=[0, 1]) mirror([0, 0, j]) {
            translate([0, 0, (height-profileheight)/2]) rotate([0, 90, 0])
                linear_extrude(nozzledist*(num-1)/2+rounddist) prof();
            translate([nozzledist*(num-1)/2+rounddist, 0,
                       height/2-roundrad]) rotate([90, 0, 0])
                rotate_extrude(90)
                    translate([roundrad-profileheight/2, 0]) prof();
            translate([nozzledist*(num-1)/2+
                       rounddist+roundrad-profileheight/2, 0, 0])
                linear_extrude(height/2-roundrad) prof();
        }
        rotate([0, 90, 0]) linear_extrude(nozzledist*(num-1)/2)
            polygon([[-1, -1], [0, 3], [0.8, 2.2], [0.8, 0]]);
    }
    for(x=[-nozzledist*(num-1)/2:nozzledist:nozzledist*(num-1)/2])
        translate([x, 0, 0]) {
            translate([0, 0, height]) %cylinder(5, d=12.5);
            rotate_extrude() polygon([
                [0, height+1],
                [5.2, height+1],
                [3.2, height-1],
                [3.2, height-profileheight+1],
                [5.2, height-profileheight-1],
                [4.1, profileheight+1],
                [2.1, profileheight-1],
                [2.1, 1],
                [4.1, -1],
                [0, -1]]);
        }
    for(i=[0, if(num>2) 1]) mirror([i, 0, 0]) {
        translate([nozzledist*(num/2-1), 0, 0]) {
            translate([2.7, 0, 2]) {
                cylinder(8, d=3.4, center=true);
                cylinder(4, d=6);
            }
            %translate([0, 0, -2]) cube([13.3, 8, 4], center=true);
        }
    }
}

module e3dlogo() translate([-16, -6.5]) {
    for(i=[0, 1]) translate(i*[21, 0]) mirror([i, 0]) {
        polygon([[4, 0], [10, 0], [10, 1.4], [8.4, 3], [3, 3],
                 [3, 5], [8.4, 5], [8.4, 8], [0, 8], [0, 4]]);
        translate([4, 4]) intersection() {
            difference() {
                circle(4);
                circle(1);
            }
            rotate(180) square(4);
        }
        polygon([[0, 10], [10, 10], [10, 13], [4, 13]]);
        translate([4,9]) mirror([1, 0]) resize([4, 3]) intersection() {
            circle(4);
            translate([0, 1]) square(4);
        }
    }
    polygon([[22, 0], [28, 0], [32, 4], [32, 9], [28, 13], [22, 13],
             [22, 10], [29, 10], [29, 3], [25, 3], [25, 8], [22, 8]]);
    for(i=[0, 1]) translate(i*[0, 13]) mirror([0, i])
        translate([28, 9]) intersection() {
            difference() {
                circle(4);
                circle(1);
            }
            square(4);
        }
}

translate([0, 0, profilewidth/2]) rotate([-90, 0, 0]) difference() {
    holder();
    if(logo) for(r=[-90, 90]) rotate([90, 0, r])
        translate([0, height/2, nozzledist*(num-1)/2+roundrad+rounddist])
            linear_extrude(0.8, center=true)
                scale((profilewidth-2*chamfer)/36) e3dlogo();
}
