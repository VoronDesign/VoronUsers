include <Round-Anything/polyround.scad>

scale([.75,.75,.75]) translate([0,0,20]) rotate([0,90,0]) difference()
{
union()
{
polyRoundExtrude(radiiPointsa, 20, 1, 1, 30, fn=1);    
translate([0,0,-20]) polyRoundExtrude(radiiPointsb, 40, 1, 1, 30, fn=1);  
polyRoundExtrude(radiiPointsc, 20, 1, 1, 30, fn=1);    
//translate([20,0,0]) rotate([0,-90,0]) polyRoundExtrude(radiiPoints, 20, 1, 1, 30, fn=1);    

//translate([0,0,17]) difference()
//{
//polyRoundExtrude(radiiPointstab, 3, 1, 1, 30, fn=1);    
//polyRoundExtrude(radiiPointshole, 3, -1, 0, 30);    
//}

}

translate([0,20,10])
rotate_extrude(convexity = 10, $fn=30)
translate([10, 0, 0])
circle(r = 4, $fn=30);


translate([0,30,0])
rotate([90,0,0]) rotate_extrude(convexity = 10, $fn=30)
translate([10, 0, 0])
circle(r = 4, $fn=30);

translate([10,20,0])
rotate([0,90,0]) rotate_extrude(convexity = 10, $fn=30)
translate([10, 0, 0])
circle(r = 4, $fn=30);



//translate([-50.1,0,-25]) cube(50);

//difference()
//{
//translate([0,30,-4])
//rotate([90,0,0])
//rotate_extrude(convexity = 10, $fn=30)
//translate([12, 0, 0])
//rotate([0,0,-30]) circle(r = 6, $fn=30);
//
//translate([0,20,-25])
//cube(50);
//}


translate([17,10,12]) cylinder(11,3.25,3.25, $fn=30);
translate([17,10,10]) cylinder(2,1.75,3.25, $fn=30);
translate([17,10,-1]) cylinder(16,1.75,1.75, $fn=30);

translate([-10,37,12]) cylinder(11,3.25,3.25, $fn=30);
translate([-10,37,10]) cylinder(2,1.75,3.25, $fn=30);
translate([-10,37,-1]) cylinder(16,1.75,1.75, $fn=30);

translate([-10,43,17]) rotate([90,0,0]) cylinder(11,3.25,3.25, $fn=30);
translate([-10,32,17]) rotate([90,0,0]) cylinder(2,3.25,1.75, $fn=30);
translate([-10,35,17]) rotate([90,0,0]) cylinder(16,1.75,1.75, $fn=30);

translate([17,43,-10]) rotate([90,0,0]) cylinder(11,3.25,3.25, $fn=30);
translate([17,32,-10]) rotate([90,0,0]) cylinder(2,3.25,1.75, $fn=30);
translate([17,35,-10]) rotate([90,0,0]) cylinder(16,1.75,1.75, $fn=30);

translate([12,37,-10]) rotate([0,90,0]) cylinder(11,3.25,3.25, $fn=30);
translate([10,37,-10]) rotate([0,90,0]) cylinder(2,1.75,3.25, $fn=30);
translate([-1,37,-10]) rotate([0,90,0]) cylinder(16,1.75,1.75, $fn=30);

translate([12,10,17]) rotate([0,90,0]) cylinder(11,3.25,3.25, $fn=30);
translate([10,10,17]) rotate([0,90,0]) cylinder(2,1.75,3.25, $fn=30);
translate([-1,10,17]) rotate([0,90,0]) cylinder(16,1.75,1.75, $fn=30);
}


radiiPointsa=[
[0,0,1],
[20,0,1],
[20, 40, 1],
[0, 40, 1],
];
radiiPointsb=[
[0,20,1],
[20,20,1],
[20, 40, 1],
[0, 40, 1],
];
radiiPointsc=[
[-20,20,1],
[20,20,1],
[20, 40, 1],
[-20, 40, 1],
];
radiiPointstab=[
[0,0,2],
[20,0,0],
[30,5,5],
[30,15,5],
[20,20, 5],
[20,30, 0],
[0, 20, 2],
];

radiiPointshole=[
[23.3,8.3,1.6],
[23.3,11.7,1.6],
[26.7,11.7,1.6],
[26.7,8.3,1.6],
];
