# VOV0 Extended skirts with minimal display
## Description 
extended skirts with more than 15mm to allow put any motor size for the Z-Axis and not just sticking with one option i use a regulair motor with integrated lead screw 
of 38mm , more than that so i can use the front for adding a display with rotary knob , minimal display.

![V0 1 v4](https://user-images.githubusercontent.com/70104136/134428953-ea42ec26-fc77-484b-8fd5-7e1ff1d7ee43.png)
![0022](https://user-images.githubusercontent.com/70104136/134430987-093e30ec-13d7-4004-a4af-4ddccd638a8e.jpg)

## BOM
- 1/  360 Degree Rotary Encoder Module For arduino 


https://fr.aliexpress.com/item/32648520888.html?spm=a2g0o.productlist.0.0.35bd3ab84rgxF1&algo_pvid=cc92eaba-74ed-4295-b8ea-a52ac7373180&algo_exp_id=cc92eaba-74ed-4295-b8ea-a52ac7373180-0&pdp_ext_f=%7B%22sku_id%22%3A%2259641309080%22%7D

- 2/ 128x64 LCD screen, 0.96 inch, * 4 pin


https://fr.aliexpress.com/item/32957309383.html?spm=a2g0o.productlist.0.0.56156a5b0JbXGu&algo_pvid=348a5cff-174b-4e6d-812b-025c9c961e12&aem_p4p_detail=20210921055250195621764574000013465587&algo_exp_id=348a5cff-174b-4e6d-812b-025c9c961e12-2&pdp_ext_f=%7B%22sku_id%22%3A%2210000002492059219%22%7D

# Pinout to SKR E3 MINI V1.2
![VOV0_Display](https://user-images.githubusercontent.com/70104136/134429656-9e1e6ce7-d90e-4991-aeec-d5ac53f903be.jpg)

### add this lines in *printer.cfg*
- [display]
- lcd_type: sh1106
- encoder_pins: PB8, PB9
- Click_pin: ^!PB5

## Thank you all (3DPMAMSIH)
