# Universal_Phone_Mount

Phone/tablet mount for the Voron 2.4. It replaces the mini12864 directly so it uses the official hinge (and mini12864_case_rear if you wish). I tried to keep the voron spirit and aesthetics.

This mount should work with the majority of smartphones out there, I also included some files to hopefully work with tablets if you wish to use one.
It consists of two claws on a slider that hold your device with the help of an elastic band. 

Check "Size and clearance" for more details and to choose what files to print for your needs.


![1](Images/Assembly_Mounted_With_Galaxy_A3.jpg)

![1](Images/Assembly_Mounted.jpg)

# BOM

| Item  | Quantity | Description |
| ------------- | ------------- | ------------- |
| M3x40 SHCS | 1  | (included in the official BOM) |
| M3x8 SHCS | 2  |  |
| M3x12 SHCS | 4  | (included in the official BOM) |
| M3x6 FHCS | 4  |  |
| M3 Threaded Insert (M3x5x4) | 8  | (4 included in the official BOM) |
| M3 T-nut | 2 | (included in the official BOM)|
| Elastic Band | 1  |  |

# Printed Parts

Print the parts with the Voron recommendations.

| Preview  | Part Name | Quantity | Description |
| ------------- | ------------- | ------------- |  ------------- |
| ![case_front](Images/CAD_parts/case_front.png) | case_front.stl | 1 | |
| ![case_rear](Images/CAD_parts/case_rear.png) | case_rear.stl | 1 | If you already have the mini12864_case_rear you can use that instead |
| ![slider](Images/CAD_parts/slider.png) | slider.stl | 1 | Choose the size for your needs, the number in the name is the maximum width it will support. (i.g. "Slider_80mm.stl" will support devices up to 80mm) |
| ![guide](Images/CAD_parts/guide_x2.png) | guide_x2.stl | 2 | |
| ![claw_top](Images/CAD_parts/claw_top.png) | a_claw_top_X.Xmm.stl | 1 | Choose the size for your needs, the number in the name is the maximum thickness it will support. (i.g. "claw_top_7.5mm.stl" will support devices up to 7.5mm in thickness) |
| ![claw_bottom](Images/CAD_parts/claw_bottom.png) | a_claw_bottom_X.Xmm.stl | 1 | Choose the size for your needs, the number in the name is the maximum thickness it will support. (i.g. "claw_bottom_6.5mm.stl" will support devices up to 6.5mm in thickness) |
| ![hinge](Images/CAD_parts/mini12864_case_hinge.png) | a_mini12864_case_hinge.stl | 1 | Original hinge from the main files|

# Size and clearance

![1](Images/Size.png)

The size of the claws and slider will dictate the compatibility with your device. If you wish to use multiple different devices, print a size that accommodates the biggest one, so you don't need to change claws when you swap devices.

The minimum supported width is around 58mm (with the slider_80mm), so if you device is smaller than that, it wont be properly secured.

The maximum device width inorder for the case_front to stay flush with the rest of the skirts is around 65mm. Larger than that and you need to pivot the mount forward. This depends largely on the surface your printer is on, if you don't have much surface infront of the printer, you won't need to pivot as much for larger devices such as tablets.

**Note:** If you wish to use multiple devices and the width changes substantially, you'll most likely need to change the slider when you want to swap devices, since the bigger slider might not close enough to hold the smaller device. The bigger claws, however, should still work with thinner devices.

If you are looking for a particular size that others can also use, give me a shout.

 ![1](Images/CAD_Clearence.png)
 
 ![1](Images/CAD_Clearence_2.png)

# Assembly

Exploded view:
![1](Images/CAD_Exploded.png)

_(Please don't mind the print quality on the photos, the parts were printed on my scuffed Ender 3 to get my 2.4 up and running :) )_

Start by inserting the M3 inserts
![1](Images/Front_Inserts.jpg)

(insert on the far most left and right if you are using the mini12864_case_rear)![1](Images/Back_Inserts.jpg)

![1](Images/Slider_Inserts.jpg)

The elastic I used is around 60mm in diameter, I looped it twice on the parts. Any elastic should do as long as it's not too thick, you can cut and knot to the desired lenght/strength.
![1](Images/Elastic_Band.jpg)

Put the elastic on the slider.
![1](Images/Slider_Elastic.jpg)

Place the slider on the case_front (M3 inserts facing up) and tighten both "guide_x2" with the M3x8 bolts. Then simply pull the elastic to it's retainer on the case_front. 
![1](Images/Slider_Elastic_Main_Assembly.jpg)

Place the claws, firmly tighten the M3x6 FHCS but not too hard.
![1](Images/Full.jpg)

Place the case_rear (or mini12864_case_rear) and tighten it down with the M3x12 bolts.
![1](Images/Back.jpg)

Follow the pages 246, 248 and 250 from the official voron assembly manual to assemble the mini18264_case_hinge and install the assembly in the machine.

![1](Images/246.png)![1](Images/248.png)![1](Images/250.png)



Enjoy
