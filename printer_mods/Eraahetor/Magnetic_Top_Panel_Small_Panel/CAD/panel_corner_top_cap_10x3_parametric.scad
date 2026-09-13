// Magnetic Top Panel - Small Panel Variant
// Derived from Printopal's Magnetic_top_panel (GPL-3.0) in VoronUsers.
// Parametric panel/frame offset; tested values are the defaults below.
// This source expects to live at:
// printer_mods/<author>/Magnetic_Top_Panel_Small_Panel/CAD/

$fn = 120;

// --- Tested configuration ---
panel_width      = 434.0; // mm
panel_depth      = 434.0; // mm
frame_spacing_x  = 441.0; // center-to-center of the upward frame extrusions
frame_spacing_y  = 441.0;
panel_h          = 3.00;
roof_h           = 1.00;

magnet_nominal_d = 10.00;
hole_clearance   = 0.10; // total diameter clearance
magnet_d          = magnet_nominal_d + hole_clearance;
magnet_t          = 3.00;

// Local alignment inherited from Printopal's original panel corner.
new_magnet = [-10.00, 10.00];

inset_x = (frame_spacing_x - panel_width) / 2;
inset_y = (frame_spacing_y - panel_depth) / 2;
panel_corner = [new_magnet[0] - inset_x,
                new_magnet[1] + inset_y];

total_h = panel_h + roof_h;

assert(inset_x >= 0 && inset_y >= 0,
       "Panel cannot be larger than the measured extrusion-center spacing.");
assert(panel_h >= magnet_t,
       "Panel thickness must be at least the magnet thickness for this topology.");

module original_footprint_2d() {
    union() {
        projection(cut=false)
            import("../../../Printopal/Magnetic_top_panel/STL/panel_corner.stl", convexity=20);
        translate([-14.0, 14.0]) circle(d=7.40);
    }
}

module full_cap_blank() {
    linear_extrude(height=total_h)
        original_footprint_2d();
}

module panel_recess() {
    // For this corner the panel extends toward -X / +Y.
    translate([-100, panel_corner[1], -0.01])
        cube([100 + panel_corner[0], 100, panel_h + 0.01]);
}

module magnet_pocket() {
    translate([new_magnet[0], new_magnet[1], -0.01])
        cylinder(h=magnet_t + 0.01, d=magnet_d);
}

difference() {
    full_cap_blank();
    panel_recess();
    magnet_pocket();
}
