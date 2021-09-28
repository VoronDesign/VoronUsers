VOV0 Extended Skirt with minimal V0 display


![Skirts_02](https://user-images.githubusercontent.com/70104136/134173317-ff4aa4cb-8ed0-494d-aa38-c9c391b56a32.png)
![V0 1 v4](https://user-images.githubusercontent.com/70104136/134173330-3ad1235d-190b-4592-adcd-1b2611578505.png)

Need

1/  360 Degree Rotary Encoder Module For arduino

https://fr.aliexpress.com/item/32648520888.html?spm=a2g0o.productlist.0.0.35bd3ab84rgxF1&algo_pvid=cc92eaba-74ed-4295-b8ea-a52ac7373180&algo_exp_id=cc92eaba-74ed-4295-b8ea-a52ac7373180-0&pdp_ext_f=%7B%22sku_id%22%3A%2259641309080%22%7D

2/ 128x64 LCD screen, 0.96 inch, * 4 pin

https://fr.aliexpress.com/item/32957309383.html?spm=a2g0o.productlist.0.0.56156a5b0JbXGu&algo_pvid=348a5cff-174b-4e6d-812b-025c9c961e12&aem_p4p_detail=20210921055250195621764574000013465587&algo_exp_id=348a5cff-174b-4e6d-812b-025c9c961e12-2&pdp_ext_f=%7B%22sku_id%22%3A%2210000002492059219%22%7D

Pinout to SKR E3 MINI V1.2
![VOV0_Display](https://user-images.githubusercontent.com/70104136/134173344-3d190dd3-75ff-4b19-b6de-e5c5f0cc946f.jpg)

add this lines in *printer.cfg*
[display]

lcd_type: sh1106

encoder_pins: PB8, PB9

Click_pin: ^!PB5