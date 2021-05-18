use <DIN-Rail-Cable-Mount-350mm.scad>
use <Edge-2020-Cable-Clamp.scad>

scale([1,1,1])
translate([2,-15.5,5]) {
    rotate([270,90,0]) {
        clamp_2020_multi4(false);
    }
}

rotate([90,0,0]) {
    cable_ramp();
}