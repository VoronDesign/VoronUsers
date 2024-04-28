<h2>THE FILTER</h2>

Two Fan design for standard spacing on voron beds (Not Fysetc)
![Capture](https://user-images.githubusercontent.com/40711977/206071335-f1223fbc-f680-44b8-91a9-98b2479612f7.PNG)

<h2>ABOUT</h2>
Basically the same but just uses two fans and doesnt require spacers. Helps a ton with heating of your printer.


<h2>UPDATE</h2>

With feedback from memebrs of the community. A number of things have been addressed. Firstly the exhaust has been changed and optimized to improve the loss of pellet issue as well as improve filtering performance. The trade of for these modification is heat up time and overall heating performance is slightly affected. The mounts for connector's have also been changed to fit the aliexpress listings. I have added holes to secure the fans if desired. The lid still lacks screws for aesthetic reasons. Wiring channels for the two fan version has also been drastically altered due to confusion and overall jankyness


<h2>Testing</h2>

Time the printer took to reach 40c
* Stock VORON 2.4 350mm - 55 minutes
* Nevermore VORON 2.4 350mm - 40 minutes
* THE FILTER VORON 2.4 350mm - 12 minutes

Quick statistics graph (courtesy of Discord user akinferno#3062)

Testing heat up time to 40°C

![image](https://user-images.githubusercontent.com/40711977/205898660-43da5bac-684c-4fba-b842-941ae9fd0de9.png)



<h2>Parts Required</h2>

* (2-3) 5015 fans 24v
* (ferrule kit)
* (1) 2 pin microfit molxex if not using the POGO connector
* (1) MISC heatshrink and solder (best) or Solder heatshrink tubing (better) or buttsplices (ok)


<h2> Magnetic pogo connector and cord from ali-express</h2>

* (1) https://www.aliexpress.us/item/3256804221055336.html?srcSns=sns_Copy&spreadType=socialShare&bizType=ProductDetail&social_params=20779293577&aff_fcid=44f0e74988274c4499971f60e99f891c-1673036405324-01774-_mqFtqGi&tt=MG&aff_fsk=_mqFtqGi&aff_platform=default&sk=_mqFtqGi&aff_trace_key=44f0e74988274c4499971f60e99f891c-1673036405324-01774-_mqFtqGi&shareId=20779293577&businessType=ProductDetail&platform=AE&terminal_id=044abf04a0964a288808161aa9379e57&afSmartRedirect=y&gatewayAdapt=glo2usa&_randl_shipto=US

<h2>Installation</h2>

1) Print the Models
2) Remove top covers of 5015 fans (Required)
3) Run Wires neatly and solder fans in parallel or use Solder heatshrink tubing
4) Remove bed from frame and mount Bracket to frame in the appropriate position (see pictures)
5) Connect to MCU and adjust your config (I encourage the filter to be set up using andrew ellis bed fan macro)

If Using magnetic connector's:
1) Print Soldering Jig (connector is magnetic and is very hard to solder with out being secured)
* center pin is positive 
* side pins are GND
* place connector into jig and tape down to more easily attach wires
2) If applicable Cut USB connector off exposing red and black wire otherwise proceed to step 3
3) Crimp on ferrules and press the end of the power cable into 3d printed mounting bracket (use super glue if the connector feels to loose)
4) Connect to MCU and adjust your config (I encourage the filter to be set up using andrew ellis bed fan macro) 

<h2>IMPORTANT</h2>

* CONNECT WIRES TO SPARE HOTEND PORTS TO PROTECT THE MCU in case of accidental disconnects for the filter.

* DO NOT REMOVE THE PRINTED LID WHILE THE BUILDPLATE IS WARM (DOING SO INTRODUCES BOWING TO THE PART RESULTING IN A BAD SEAL AND TERRIBLE PERFORMANCE)



<h2>Sample config (pulled from andrew ellis github)</h2>

https://github.com/VoronDesign/VoronUsers/blob/master/printer_mods/Ellis/Bed_Fans/Klipper_Macros/bedfans.cfg

A pre configured macro with modified variables is provided be sure to Add `[include bedfans.cfg]` to your printer.cfg and adjust the pin or follow direction below.

**1)** Place the .cfg file in the same directory as your printer.cfg file. 

**2)** Add `[include bedfans.cfg]` to your printer.cfg.

**3)** Change `pin` for your fans in the second section. 
- This is intentionally left blank so that it will error if you don't fill it in.

**4)** Configure the options in the first section:

- `variable_threshold` sets the bed temp threshold at which your bed fans will be used. 
    - Default is 100C (so it does not enable for PLA)
- `variable_slow` sets the fan speed for when the bed is **heating.** 
- `variable_fast` sets the fan speed for when the bed is **at temperature.**


<h2> CAD Picture's</h2>

![top view 2 fan](https://user-images.githubusercontent.com/40711977/209454884-38ec26e2-2b69-45c8-966b-176448a36997.png)
![bottom view 2 fan](https://user-images.githubusercontent.com/40711977/209454889-b01d2831-7c04-4726-878b-84dff8008b60.png)
![Capture](https://user-images.githubusercontent.com/40711977/206071363-46ecd10d-1885-48b7-8d1a-6527672f7e51.PNG)
![Capture](https://user-images.githubusercontent.com/40711977/206072469-2b4b24e0-46da-4d50-a653-33b967045e98.PNG)
![Capture 2](https://user-images.githubusercontent.com/40711977/206072474-19cf3e0c-233a-4c2a-9291-e493c7e20ab0.PNG)

<h2> My Discord Username</h2>

nate#5815

<h2>Credits</h2>

The VORON team for providing the cad making my life easier

Discord user (akinferno#3062)

Andrew ellis (Ellis #4980) for inspiration and for a macro that I couldnt make myself https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/Ellis/Bed_Fans

The nevermore (click the link to learn about VOC's) https://github.com/nevermore3d/Nevermore_Micro
