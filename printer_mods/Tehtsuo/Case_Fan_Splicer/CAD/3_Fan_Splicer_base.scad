
difference()
{
    union()
    {
        cube([12,26,4]);
        translate([6,-0,0]) cylinder(4, 6,6);
        translate([6,26,0]) cylinder(4, 6,6);
    }

    translate([2,2,2]) cube([8,22,8]);




    translate([6, -3, -1]) cylinder(6, 1.75, 1.75, $fn=30);
    translate([6, 29, -1]) cylinder(6, 1.75, 1.75, $fn=30);
}



