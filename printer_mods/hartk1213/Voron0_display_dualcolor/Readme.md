# Dual color for the V0 Display housing

i modified the file to make it so the logo can be printed in an accent color as well as the stop button "X" 

the easiest way i found to print it was to use prusa slicer and if you dont already have an MMU profile (you dont need an MMU to do this i dont even have one) then create a new MMU profile in PrusaSlicer and then drag all 3 stls into the slicer at the same time. It will then ask you if these files are multiple parts of the same file and if so do you want to align them, select yes and it will align all the files in the correct orientation. what i do next is on the side where you can see the 2 stl files, i delete 1 of them and then slice the remaining file, and repeat that for the last remaining file. When you print them do not move or touch the build plate and one thing i found to help was for the first print change the Gcode to keep the heated bed on after the print is finsihed that way the smaller parts do not pop off the bed on accident because then you would need to reprint them. 

for the logo file since the parts are really tiny, i slowed the printer down quite a bit and upped the extrusion a tad and lowered the zoffset just to make sure it would stick better. it took me a few tries to get it right but it came out great!

good luck and make sure to post it to the build showcase when you finish it

for the 2nd and final print i do a z hop of at least .4mm since the first 2 prints were done at .4mm total (2 layers at .2mm) 

1. [a]_logo
2. Housing_Front_with_logo

 
##### Pictures
![Printed Panel](Images/display.jpg)
