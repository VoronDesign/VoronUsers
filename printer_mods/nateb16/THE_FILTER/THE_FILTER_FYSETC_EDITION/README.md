<h2>THE FILTER</h2>

![THE_FILTER_FYSETC](https://user-images.githubusercontent.com/40711977/215372358-e4c5da67-451c-4bd3-a985-12d2e801c684.png)

<h2>ABOUT</h2>

THE FILTER is a custom mod of my own design. I was intially inspired to embark on this project after my Nevermore melted. It is a hybrid of Andrew ellis's bed fan's and the Nevermore in a completly custom housing. I have created two designs a two 5015 fan version and a 3 fan version for fysetc bed (since they have non standard hole spacing). Both feature a high capacity for pellet charcoal in a two piece model with a bracket using a minimal amount of supplies. It is mounted from the front to DRASTICALLY improve heating of your printer chamber by blowing air over the bottom of the bed. I also wanted it to be easily removable so it features a optional magnetic quick disconnect using POGO connectors which is what I believe to be a first for a mod of this kind. This connector makes removal during PLA prints and maintenance easy. It is tested extensivly with over 40 hours of runtime and 50 connects and disconnects. Its high airflow and compact design makes it melt and warp resistant. Using 3d printed spacers it is also thermally isolated from the printer frame. 


<h2>UPDATE</h2>

With feedback from memebrs of the community. A number of things have been addressed. Firstly the exhaust has been changed and optimized to improve the loss of pellet issue as well as improve filtering performance. The trade of for these modification is heat up time and overall heating performance is slightly affected. The mounts for connector's have also been changed to fit the aliexpress listings. I have added holes to secure the fans if desired. The lid also now has screws
I have also updated the install instruction for clarity.


<h2>Testing</h2>

Rough estimates found during testing (results vary on how well your printer is insulated and how large it is as well)

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

<h2>pogo connector and cord from ali-express</h2>


* (1) https://www.aliexpress.us/item/3256804221055336.html?srcSns=sns_Copy&spreadType=socialShare&bizType=ProductDetail&social_params=20779293577&aff_fcid=44f0e74988274c4499971f60e99f891c-1673036405324-01774-_mqFtqGi&tt=MG&aff_fsk=_mqFtqGi&aff_platform=default&sk=_mqFtqGi&aff_trace_key=44f0e74988274c4499971f60e99f891c-1673036405324-01774-_mqFtqGi&shareId=20779293577&businessType=ProductDetail&platform=AE&terminal_id=044abf04a0964a288808161aa9379e57&afSmartRedirect=y&gatewayAdapt=glo2usa&_randl_shipto=US

<h2>Installation</h2>

Install instructions found with applicable models

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

<h2>Sample config and setup instructions (pulled from andrew ellis github)</h2>

https://github.com/VoronDesign/VoronUsers/blob/master/printer_mods/Ellis/Bed_Fans/Klipper_Macros/bedfans.cfg

A pre configured macro with modified variables is provided be sure to Add `[include bedfans.cfg]` to your printer.cfg and adjust the pin or follow direction below.

**1)** Place the .cfg file  in the same directory as your printer.cfg file. 

**2)** Add `[include bedfans.cfg]` to your printer.cfg.

**3)** Change `pin` for your fans in the second section. 
- This is intentionally left blank so that it will error if you don't fill it in.

**4)** Configure the options in the first section:

- `variable_threshold` sets the bed temp threshold at which your bed fans will be used. 
    - Default is 100C (so it does not enable for PLA)
- `variable_slow` sets the fan speed for when the bed is **heating.** 
- `variable_fast` sets the fan speed for when the bed is **at temperature.**


<h2> Prototype Install Picture's (Current CAD and models have minor cosmetic changes compared to these picture)</h2>

![IMG_0457](https://user-images.githubusercontent.com/40711977/205880160-19b53a0d-086c-4124-b755-1bd57a20bb04.JPG)
![IMG_0444](https://user-images.githubusercontent.com/40711977/205880165-3ba21d84-3fa3-4597-8a1a-d5fb0c207cd1.JPG)
![IMG_0460](https://user-images.githubusercontent.com/40711977/205880170-c08e3687-5b1d-4777-b2e4-76c74d392f3e.JPG)
![IMG_0467](https://user-images.githubusercontent.com/40711977/205882261-f7613fc7-078c-4e10-b99c-e62a4e7fb66f.JPG)

<h2> CAD PICTURES</h2>

![top view](https://user-images.githubusercontent.com/40711977/215373281-1bb5b1b9-15c9-4442-8e06-7c9a4f41b193.png)
![internal view](https://user-images.githubusercontent.com/40711977/215373295-90b48217-1e64-4648-b055-dd2c12cc404a.png)
![THE_FILTER_FYSETC](https://user-images.githubusercontent.com/40711977/215373299-dea9ac5b-4e68-4241-ab6f-99639b6c0d51.png)

<h2>My Discord Username</h2>

nate#5815

<h2>Credits</h2>

Discord user (akinferno#3062)
