<h2>THE FILTER</h2>

Two Fan design for standard spacing on voron beds (Not Fysetc)
![Capture](https://user-images.githubusercontent.com/40711977/206071335-f1223fbc-f680-44b8-91a9-98b2479612f7.PNG)

<h2>ABOUT</h2>
Basically the same but just uses two fans and doesnt require spacers. Helps a ton with heating of your printer.


<h2>Testing</h2>

Time the printer took to reach 40c
* Stock VORON 2.4 350mm - 55 minutes
* Nevermore VORON 2.4 350mm - 40 minutes
* THE FILTER VORON 2.4 350mm - 12 minutes

Quick statistics graph (courtesy of Discord user akinferno#3062)

Testing heat up time to 40°C

![image](https://user-images.githubusercontent.com/40711977/205898660-43da5bac-684c-4fba-b842-941ae9fd0de9.png)



<h2>Parts Required</h2>

* (2) 5015 fans 
* (1) optional magnetic pogo power connector from digikey https://www.digikey.com/en/products/detail/adam-tech/PHR-C4777-02-FVP-800/9832016
* (1) optional power cord for pogo connector from digikey https://www.digikey.com/en/products/detail/adam-tech/CA-ST2-PHR-198-M/9832013 
* (1) jst-XH 2 pin connector with metal pin
* (1) 2 pin microfit molxex if not using the POGO connector
* (1) MISC heatshrink and solder (best) or Solder heatshrink tubing (better) or buttsplices (ok)

<h2>Cheaper alternative pogo connector and cord from ali-express</h2>

* (1) https://www.aliexpress.us/item/3256803531038291.html?spm=a2g0o.productlist.0.0.65b231cdL4B9KI&algo_pvid=d942f52a-126a-4209-835e-aec6d4ec4877&algo_exp_id=d942f52a-126a-4209-835e-aec6d4ec4877-0&pdp_ext_f=%7B%22sku_id%22%3A%2212000026915987305%22%7D&pdp_npi=2%40dis%21USD%213.72%212.98%21%21%21%21%21%402101d8b516703451694166001e84e0%2112000026915987305%21sea&curPageLogUid=LSwHGmyIJeaz

note this connector is untested but identical the digikey parts  



<h2>Installation</h2>

1) Print the Models
2) Remove top covers of 5015 fans (Required)
3) Run Wires neatly and solder fans in parallel or use Solder heatshrink tubing
4) Remove bed from frame and mount Bracket to frame in the appropriate position (see pictures)
5) install spacers that prevent contact with aluminum extrusion
4) Connect to MCU and adjust your config (I encourage the filter to be set up using andrew ellis bed fan macro)

If Using Adam Tech connector's:
1) Print Soldering Jig (connector is magnetic and is very hard to solder with out being secured)
* center pin is positive 
* side pins are GND
* place connector into jig and tape down to more easily attach wires
2) Cut USB connector off it has two 24awg one red wire and one black. the sheath needs to be cut back and the wires stripped to prepare for crimping
3) Crimp on jst-XH and press the end of the connector into mounting bracket use super glue if the connector feels to loose
4) Connect to MCU and adjust your config (I encourage the filter to be set up using andrew ellis bed fan macro)





<h2>Sample config (pulled from andrew ellis github)</h2>

https://github.com/VoronDesign/VoronUsers/blob/master/printer_mods/Ellis/Bed_Fans/Klipper_Macros/bedfans.cfg

A pre configured macro with modified variables is provided be sure to Add `[include bedfans.cfg]` to your printer.cfg and adjust the pin or follow direction below.

**1)** Place the .cfg file (located in the [Klipper_Macros](./Klipper_Macros) folder) in the same directory as your printer.cfg file. 

**2)** Add `[include bedfans.cfg]` to your printer.cfg.

**3)** Change `pin` for your fans in the second section. 
- This is intentionally left blank so that it will error if you don't fill it in.

**4)** Configure the options in the first section:

- `variable_threshold` sets the bed temp threshold at which your bed fans will be used. 
    - Default is 100C (so it does not enable for PLA)
- `variable_slow` sets the fan speed for when the bed is **heating.** 
- `variable_fast` sets the fan speed for when the bed is **at temperature.**

<h2> Final Version Install Picture's (courtesy of Discord user akinferno#3062)</h2>



<h2> CAD Picture's</h2>

![Capture](https://user-images.githubusercontent.com/40711977/206071240-cf6bc2a2-0eaa-45a9-9f45-24e4b7bbde2f.PNG)
![Capture](https://user-images.githubusercontent.com/40711977/206071363-46ecd10d-1885-48b7-8d1a-6527672f7e51.PNG)
![Capture](https://user-images.githubusercontent.com/40711977/206072469-2b4b24e0-46da-4d50-a653-33b967045e98.PNG)
![Capture 2](https://user-images.githubusercontent.com/40711977/206072474-19cf3e0c-233a-4c2a-9291-e493c7e20ab0.PNG)

<h2>My Discord Username</h

nate#5815

<h2>Credits</h2>

Discord user akinferno#3062)

Andrew ellis (Ellis #4980) for inspiration and for a macro that I couldnt make myself https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/Ellis/Bed_Fans

The nevermore (click the link to learn about VOC's) https://github.com/nevermore3d/Nevermore_Micro

