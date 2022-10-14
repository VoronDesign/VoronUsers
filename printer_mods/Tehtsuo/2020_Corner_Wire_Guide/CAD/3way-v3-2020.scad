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
        translate([0,0,20]) polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
        translate([0,0,10]) polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
        translate([0,20,0]) polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
        translate([0,10,0]) polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
        translate([20,0,0]) polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
        translate([10,0,0]) polyRoundExtrude(radiiPointsa, 20, 1, 1, 1); 
    }
    
    translate([0,0,1.5]) polyRoundExtrude(radiiPointsd_inset, 17, 0, 0, 0); 
    translate([0,0,21.5]) polyRoundExtrude(radiiPointsd_inset, 13, 0, 0, 0); 
    translate([0,0,15]) polyRoundExtrude(radiiPointsd_inset, 17, 0, 0, 0); 
    translate([0,20,6]) polyRoundExtrude(radiiPointsc_inset, 12, 0, 0, 0); 
    translate([20,0,6]) polyRoundExtrude(radiiPointsb_inset, 12, 0, 0, 0); 

    difference()
    {
        translate([10,10,10]) sphere(13);
        translate([-93.5,0,0]) cube(100);
        translate([0,-93.5,0]) cube(100);
        translate([0,0,-98.5]) cube(100);
    }
    difference()
    {
        translate([30,10,10]) sphere(13);
        translate([0,-93.5,0]) cube(100);
        translate([38.5,0,0]) cube(100);
        translate([0,0,-93.5]) cube(100);
    }

    difference()
    {
        translate([10,30,10]) sphere(13);
        translate([0,0,-93.5]) cube(100);
        translate([0,38.5,0]) cube(100);
        translate([-93.5,0,0]) cube(100);
    }
    difference()
    {
        translate([10,10,27]) sphere(12);
        translate([-93.5,0,0]) cube(100);
        translate([0,-93.5,0]) cube(100);
        translate([0,0,-98.5]) cube(100);
        translate([0,0,38.5]) cube(100);
    }
}
//translate([10,30,1.5]) cylinder(4,10,10, $fn=30);        
//translate([30,10,1.5]) cylinder(4,10,10, $fn=30);        
//translate([30,1.5,10]) rotate([-90,0,0]) cylinder(4,10,10, $fn=30);        
//translate([10,1.5,30]) rotate([-90,0,0]) cylinder(4,10,10, $fn=30);        
//translate([1.5,10,30]) rotate([0,90,0]) cylinder(4,10,10, $fn=30);        
//translate([1.5,30,10]) rotate([0,90,0]) cylinder(4,10,10, $fn=30);        
}

translate([10,30,0]) cylinder(7,1.75,1.75, $fn=30);        
translate([10,30,0]) cylinder(4,3.25,3.25, $fn=30);        
translate([10,30,4]) cylinder(1,3.25,1.75, $fn=30);        

translate([30,10,0]) cylinder(7,1.75,1.75, $fn=30);        
translate([30,10,0]) cylinder(4,3.25,3.25, $fn=30);        
translate([30,10,4]) cylinder(1,3.25,1.75, $fn=30);    

translate([30,0,10]) rotate([-90,0,0]) cylinder(7,1.75,1.75, $fn=30);        
translate([30,0,10]) rotate([-90,0,0]) cylinder(4,3.25,3.25, $fn=30);        
translate([30,4,10]) rotate([-90,0,0]) cylinder(1,3.25,1.75, $fn=30);  

translate([10,0,30]) rotate([-90,0,0]) cylinder(7,1.75,1.75, $fn=30);        
translate([10,0,30]) rotate([-90,0,0]) cylinder(4,3.25,3.25, $fn=30);        
translate([10,4,30]) rotate([-90,0,0]) cylinder(1,3.25,1.75, $fn=30);  

translate([0,10,30]) rotate([0,90,0]) cylinder(7,1.75,1.75, $fn=30);        
translate([0,10,30]) rotate([0,90,0]) cylinder(4,3.25,3.25, $fn=30);        
translate([4,10,30]) rotate([0,90,0]) cylinder(1,3.25,1.75, $fn=30);  

translate([0,30,10]) rotate([0,90,0]) cylinder(7,1.75,1.75, $fn=30);        
translate([0,30,10]) rotate([0,90,0]) cylinder(4,3.25,3.25, $fn=30);        
translate([4,30,10]) rotate([0,90,0]) cylinder(1,3.25,1.75, $fn=30);  
}

  



radiiPointsa=[
[0,0,1],
[20,0,1],
[20, 20, 1],
[0, 20, 1],
];

radiiPointsa_inset=[
[1.5,1.5,0],
[18.5,1.5,0],
[18.5, 18.5, 0],
[1.5, 18.5, 0],
];

radiiPointsb_inset=[
[1.5,5,0],
[18.5,5,0],
[18.5, 18.5, 0],
[1.5, 18.5, 0],
];
radiiPointsc_inset=[
[5,1.5,0],
[18.5,1.5,0],
[18.5, 18.5, 0],
[5, 18.5, 0],
];
radiiPointsd_inset=[
[5,5,0],
[18.5,5,0],
[18.5, 18.5, 0],
[5, 18.5, 0],
];