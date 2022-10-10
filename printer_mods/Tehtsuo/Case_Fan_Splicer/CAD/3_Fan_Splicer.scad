
difference()
{
    union()
    {
        cube([12,26,9]);
        translate([6,-0,0]) cylinder(2, 6,6);
        translate([6,26,0]) cylinder(2, 6,6);
    }

    translate([2,2,2]) cube([8,6,8]);
    translate([2,10,2]) cube([8,6,8]);
    translate([2,18,2]) cube([8,6,8]);

    translate([4.5,4.5,-1]) cylinder(10, 1,1, $fn=30);    
    translate([12-4.5,4.5,-1]) cylinder(10, 1,1, $fn=30);    
    translate([4.5,4.5+8,-1]) cylinder(10, 1,1, $fn=30);    
    translate([12-4.5,4.5+8,-1]) cylinder(10, 1,1, $fn=30);    
    translate([4.5,4.5+16,-1]) cylinder(10, 1,1, $fn=30);    
    translate([12-4.5,4.5+16,-1]) cylinder(10, 1,1, $fn=30);    

    translate([6, -3, -1]) cylinder(4, 1.75, 1.75, $fn=30);
    translate([6, 29, -1]) cylinder(4, 1.75, 1.75, $fn=30);
}



