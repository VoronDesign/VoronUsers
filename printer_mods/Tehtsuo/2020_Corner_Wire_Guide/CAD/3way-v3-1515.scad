include <Round-Anything/polyround.scad>

difference()
{
union()
{
difference()
{
    union()
    {
        polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
        translate([0,0,15]) polyRoundExtrude(radiiPointsa, 15, 1, 1, 1); 
        translate([0,0,7]) polyRoundExtrude(radiiPointsa, 15, 1, 1, 1); 
        translate([0,15,0]) polyRoundExtrude(radiiPointsa, 15, 1, 1, 1); 
        translate([0,7,0]) polyRoundExtrude(radiiPointsa, 15, 1, 1, 1); 
        translate([15,0,0]) polyRoundExtrude(radiiPointsa, 15, 1, 1, 1); 
        translate([7,0,0]) polyRoundExtrude(radiiPointsa, 15, 1, 1, 1); 
    }
    
    translate([0,0,1.5]) polyRoundExtrude(radiiPointsd_inset, 12, 0, 0, 0); 
    translate([0,0,16.5]) polyRoundExtrude(radiiPointsd_inset, 8, 0, 0, 0); 
    translate([0,0,15]) polyRoundExtrude(radiiPointsd_inset, 12, 0, 0, 0); 
    translate([0,15,5]) polyRoundExtrude(radiiPointsc_inset, 8, 0, 0, 0); 
    translate([15,0,5]) polyRoundExtrude(radiiPointsb_inset, 8, 0, 0, 0); 

    difference()
    {
        translate([7.5,7.5,7.5]) sphere(9.5);
        translate([-94.5,0,0]) cube(100);
        translate([0,-94.5,0]) cube(100);
        translate([0,0,-98.5]) cube(100);
    }
    difference()
    {
        translate([22.5,7.5,7.5]) sphere(9.5);
        translate([0,-94.5,0]) cube(100);
        translate([28.5,0,0]) cube(100);
        translate([0,0,-94.5]) cube(100);
    }

    difference()
    {
        translate([7.5,22.5,7.5]) sphere(9.5);
        translate([0,0,-94.5]) cube(100);
        translate([0,28.5,0]) cube(100);
        translate([-94.5,0,0]) cube(100);
    }
    difference()
    {
        translate([7.5,7.5,22]) sphere(9.5);
        translate([-94.5,0,0]) cube(100);
        translate([0,-94.5,0]) cube(100);
        translate([0,0,-98.5]) cube(100);
        translate([0,0,28.5]) cube(100);
    }
}

//translate([10,30,1.5]) cylinder(4,10,10, $fn=30);        
//translate([30,10,1.5]) cylinder(4,10,10, $fn=30);        
//translate([30,1.5,10]) rotate([-90,0,0]) cylinder(4,10,10, $fn=30);        
//translate([10,1.5,30]) rotate([-90,0,0]) cylinder(4,10,10, $fn=30);        
//translate([1.5,10,30]) rotate([0,90,0]) cylinder(4,10,10, $fn=30);        
//translate([1.5,30,10]) rotate([0,90,0]) cylinder(4,10,10, $fn=30);        
}

translate([7.5,22.5,0]) cylinder(6,1.75,1.75, $fn=30);        
translate([7.5,22.5,0]) cylinder(3,3.25,3.25, $fn=30);        
translate([7.5,22.5,3]) cylinder(1,3.25,1.75, $fn=30);        

translate([22.5,7.5,0]) cylinder(6,1.75,1.75, $fn=30);        
translate([22.5,7.5,0]) cylinder(3,3.25,3.25, $fn=30);        
translate([22.5,7.5,3]) cylinder(1,3.25,1.75, $fn=30);    

translate([22.5,0,7.5]) rotate([-90,0,0]) cylinder(6,1.75,1.75, $fn=30);        
translate([22.5,0,7.5]) rotate([-90,0,0]) cylinder(3,3.25,3.25, $fn=30);        
translate([22.5,3,7.5]) rotate([-90,0,0]) cylinder(1,3.25,1.75, $fn=30);  

translate([7.5,0,22.5]) rotate([-90,0,0]) cylinder(6,1.75,1.75, $fn=30);        
translate([7.5,0,22.5]) rotate([-90,0,0]) cylinder(3,3.25,3.25, $fn=30);        
translate([7.5,3,22.5]) rotate([-90,0,0]) cylinder(1,3.25,1.75, $fn=30);  

translate([0,7.5,22.5]) rotate([0,90,0]) cylinder(6,1.75,1.75, $fn=30);        
translate([0,7.5,22.5]) rotate([0,90,0]) cylinder(3,3.25,3.25, $fn=30);        
translate([3,7.5,22.5]) rotate([0,90,0]) cylinder(1,3.25,1.75, $fn=30);  

translate([0,22.5,7.5]) rotate([0,90,0]) cylinder(6,1.75,1.75, $fn=30);        
translate([0,22.5,7.5]) rotate([0,90,0]) cylinder(3,3.25,3.25, $fn=30);        
translate([3,22.5,7.5]) rotate([0,90,0]) cylinder(1,3.25,1.75, $fn=30);  
}

  



radiiPointsa=[
[0,0,1],
[15,0,1],
[15, 15, 1],
[0, 15, 1],
];

radiiPointsa_inset=[
[1.5,1.5,0],
[13.5,1.5,0],
[13.5, 13.5, 0],
[1.5, 13.5, 0],
];

radiiPointsb_inset=[
[1.5,5,0],
[13.5,5,0],
[13.5, 13.5, 0],
[1.5, 13.5, 0],
];
radiiPointsc_inset=[
[5,1.5,0],
[13.5,1.5,0],
[18.5, 13.5, 0],
[5, 13.5, 0],
];
radiiPointsd_inset=[
[5,5,0],
[13.5,5,0],
[13.5, 13.5, 0],
[5, 13.5, 0],
];