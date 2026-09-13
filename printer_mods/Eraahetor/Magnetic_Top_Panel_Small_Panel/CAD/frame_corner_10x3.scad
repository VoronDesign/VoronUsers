// Magnetic Top Panel - Small Panel Variant
// Derived from Printopal's Magnetic_top_panel (GPL-3.0) in VoronUsers.
// This source expects to live at:
// printer_mods/<author>/Magnetic_Top_Panel_Small_Panel/CAD/
// and references the upstream STL already present in the VoronUsers repository.

$fn = 120;

magnet_nominal_d = 10.00;
hole_clearance   = 0.10; // total diameter clearance
magnet_d          = magnet_nominal_d + hole_clearance;
magnet_t          = 3.00;
base_h            = 3.00;

old_magnet = [-4.0, -4.0];
new_magnet = [ 0.0,  0.0]; // center of the four extrusion locating features

module repaired_original() {
    union() {
        import("../../../Printopal/Magnetic_top_panel/STL/frame_corner.stl", convexity=20);
        // Fill the original 6 mm magnet pocket.
        translate([old_magnet[0], old_magnet[1], 0])
            cylinder(h=base_h, d=7.60);
    }
}

difference() {
    repaired_original();
    translate([new_magnet[0], new_magnet[1], -0.01])
        cylinder(h=magnet_t + 0.02, d=magnet_d);
}
