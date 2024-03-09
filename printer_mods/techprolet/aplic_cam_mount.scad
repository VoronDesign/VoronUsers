/*
Copyright 2024, Pavlos Iliopoulos.

    2020 Aplic Cam Mount is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

    2020 Aplic Cam Mount is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>. 

The author does not hold any copyright or has any affiliation with aplic and/or its products.
    */



$fn = 64;

// Wall thickness
wall_thickness = 3;

// Dimensions of the anchor
anchor_l = 15;
anchor_w = 12;
anchor_h = 6;

// Hole distances
hole_distance_x = 54;
hole_distance_y = 17;
corrective_hole_x_offset = 0.8;

// Dimensions of the wall
wall_l = hole_distance_x + 3 * wall_thickness;
wall_w = hole_distance_y + 3 * wall_thickness;

// Camera elevation
cam_elevation = 25;

// Screw dimensions
screw_length = 10;
screw_receiver_d = 6;

// Hex hole dimensions
hex_hole_y = -7;
hex_hole_d = 6;

// Support dimensions
support_w = anchor_l - 2 * wall_thickness;
support_x_offset = (anchor_w - wall_thickness) / 2;

// Heat insert dimensions
heat_insert_d = 4.4;
heat_insert_thickness = 13;

// Calculate the camera viewing angle
cam_viewing_angle_x = atan(74 / 148); // arctan( (distance between 2 rods/2) / (distance from back + stage side/2) )
echo("CAM VIEWING ANGLE x:", cam_viewing_angle_x);

// Define the solid anchor module
module solid_anchor() {
    anchor_l = 15;
    anchor_w = 12;
    anchor_h = 6;

    tie_w = 4;
    tie_offset_y = 9;
    border_w = 0.5;

    // Length is 15mm, width is 12mm
    union() {
        import("./M3_CABLE_ANCHOR.STL");
        translate([border_w, tie_offset_y, 0]) {
            cube([anchor_w - 2 * border_w, tie_w, anchor_h]);
        }
    }
}

// Define the back panel module
module back_panel() {
    hull() {
        translate([0, wall_thickness / 2, anchor_h / 2]) {
            cube([anchor_w, wall_thickness, anchor_h], center = true);
        }
        translate([0, wall_thickness / 2, wall_w / 2 + anchor_h + cam_elevation]) {
            cube([wall_l, wall_thickness, wall_w], center = true);
        }
    }
}

// Define the inserts module
module inserts() {
    translate([0, 0, wall_w / 2 + anchor_h + cam_elevation]) {
        translate([wall_thickness, -(wall_l * sin(cam_viewing_angle_x) / 2), 0]) {
            rotate([0, 0, cam_viewing_angle_x]) {
                for (x = [-1, 1]) {
                    for (y = [-1, 1]) {
                        translate([corrective_hole_x_offset + x * hole_distance_x / 2, heat_insert_thickness / 2, y * hole_distance_y / 2]) {
                            rotate([90, 0, 0]) {
                                cylinder(h = heat_insert_thickness, d = heat_insert_d);
                            }
                        }
                    }
                }
            }
        }
    }
}

module rotated_wall() {
    translate([wall_thickness, -(wall_l * sin(cam_viewing_angle_x) / 2), 0]) {
        rotate([0, 0, cam_viewing_angle_x]) {
            cube([wall_l, wall_thickness, wall_w], center = true);
        }
    }
}

module cam_mount() {
    difference() {
        translate([0, wall_thickness / 2, wall_w / 2 + anchor_h + cam_elevation]) {
            hull() {
                #cube([wall_l, wall_thickness, wall_w], center=true);
                #rotated_wall();
            }
        }

        #translate([0, hex_hole_y, 0]) {
        cylinder(h = anchor_h + cam_elevation + wall_w, d = hex_hole_d);
        }
    }
}

module supports() {
    for (i = [-1, 1]) {
        translate([i * support_x_offset, -support_w / 2, (cam_elevation + anchor_h) / 2]) {
            cube([wall_thickness, support_w, cam_elevation + anchor_h], center = true);
        }
    }
}

module aplic_complete_mount() {
    translate([-anchor_w / 2, wall_thickness - anchor_l, 0]) {
        solid_anchor();
    }
    difference() {
        union() {
            back_panel();
            cam_mount();
        }

        #inserts ();
    }

    supports();
}

rotate([270, 0, 0]){
    aplic_complete_mount();
}