# AB-BN-30

![AB-BN mod](overview.png)

![](AB-BN-28.png)

This mod is my latest iteration on improving the afterburner hotend.  The naming convention is not hard:
**A**fter**B**urner
**B**ad**N**oob
version **30**

*Disclaimer: It is your printer. If you do this and something breaks or if someone gets hurt, it is fully your responsibility. I take no responsibility.*

## Special thanks

I want to say **Thank You** to the Voron design team. I've really enjoyed learning from you. Thank you for sharing your files, criticism, advice, and support.

Additional thanks to Yellowfish, Long, Greg3D and all the fearless people that took time to help me along the way.  

## BOM

As this is replacement to the stock afterburner, many of the required screws are ones you will just reuse from your existing afterburner.

The main thing you will need to purchase is a 5015 blower fan.  You will then have to mutilate said fan, by cutting off the mounting ears.

**If this seems daunting to you, stop now.**


Heat set inserts can also be reclaimed from obsolete parts, but doing so will likely ruin the old parts.

\*Optional de-earing tool ("dearing tool")

* 1 M3x0.5 heat set insert
* 1 M3x0.5x16 SHCS

For the mod itself:

* 4x M3x0.5 heat set inserts
* the usual screws used in Afterburner 2.4
* 1 5015 blower fan (Sunon's 12volt MF50151VX-B00U-A99, SanAce B52, or Delta BFB0524HH 24v fan are recommended)\
  \
  *Note that sunon specifically states to NOT PWM this fan. I have been doing so for months and 10's of kilograms of pushed plastic without issue, but its important to state here.*

  for fan advice, look for a fan with a high static head (above .7 inches H2O) and a high max flow (5 CFM )\
  \
  The SoundOriginal 24v fans from Amazon also appear to do well.\
  \
  The following fans have been tested but are not as good in this application. they may work OK for abs, but not PLA or high speed abs:
* Sunon MF50152V**1** (the last digit here is "speed" and 1 is a much lower speed than the MF50151V**X**
* Winsinn
* Hondaly
* Mechatronics

## What does it do, and why should I do this mod?

This version of the afterburner fan and duct is a drop in replacement to the spec 2.4 and 1.8 afterburners. It replaces the 4020 blower with a far more powerful 5015 blower without sacrificing any build volume. Compared to the spec 2.4 afterburner, v24 improves the following:

\* Better part cooling for both ABS and PLA filaments

\* Fewer jams caused by heat creep

\* Very resistant to melting ducts

\* Better left-right balance

\* Cleaner airflow for better overhangs

### What has changed from AB-BN-28 to AB-BN-30?

In AB BN 28 and 29, we moved to a single piece front. This has a few advantages, but it appears there may be an issue causing hotend fan failures by stressing the 4010 fan at a weak point in its housing.\
\
The issue is fixed in AB-BN-30_Front .stl\
\
I also made some slight changes to focus the part cooling flow. I didn't see much difference from this, so I did not migrate these changes to Mosquito or E3DV6.

### I just did AB-BN-xx!...why should I move to v30?

If you are using AB-BN-28 or 29, I recommend you update the fan front piece.\
\
performance wise, ab-bn-25 is nearly identical to -30, but there are some changes.\
\
Compared to the version (AB-BN-25):

* Better wire management
* Single piece front is stiffer
* 4010 moved slightly to make it easier to remove hotend without removing fans
* Better fit (fixed the spacer to 6.6 mm)
* Fixed the back of the mosquito hotend.

Changes made since -25 by part:

* **AB-BN-30_Front**- 100%redo from -25. improved printability, standardized walls at 1.2 mm or greater. visually redone to eliminate "intake duct" or "kenny" appearance. Incorporated 4010 fan into a single piece unit. lower half matched to the hotend-front profile. fixed issue in 28,29 with 4010 fan carrier.
* **AB-BN-28_Back**- 100% redo from -25. changed tabs to fit with the front.
* **AB-BN-28_Spring**- reduced size to fit in -28
* **AB-BN-28_Spacer**-reduced thickness to 6.6mm
* **AB-BN-28_Hotend-E3Dv6-Front, AB-BN-28_Hotend-Dragon-Front, AB-BN-28_Hotend-Mos-Front**:\
  Reduced and adjusted stator to flow better with relocated 4010 fan, thickened walls at important points.
* **AB-BN-28_Hotend-E3D-Drag-Back**- NO CHANGES FROM -25
* **AB-BN-28_Hotend-Mos-Back**- adjusted to line up with Mos-front better.

#### Print Settings:

I use the standard Voron print settings, but with 30% infill. I have gone as low as 0% on the hotend_front, these parts don't get a lot of stress. I also use Hilbert curve for top and bottom patterns. ABS is recommended, but these have been printed in ABS+ and PETG as well:

* 0.4 mm Nozzle
* 0.2 mm layer height
* 30% infill
* no supports
* 4 vertical shells
* 5 solid layers top and bottom

##### What files need to be printed?


Everyone will need:

* AB-BN-30_Front
* AB-BN-30_Back
* AB-BN-28_Spring
* AB-BN-28_Spacer

  ##### Depending on your hotend you will need:

  #####   E3DV6:
* AB-BN-28_Hotend-E3Dv6-Front
* AB-BN-28_Hotend-E3Dv6-Back

  ##### Dragon (high flow and regular):
* AB-BN-30_Hotend-Dragon-Front
* AB-BN-28_Hotend-Drag-Back

  ##### Mosquito (high flow and regular):

* AB-BN-28_Hotend-Mos-Front
* AB-BN-28_Hotend-Mos-Back

(special note:  I don't reccomend the Mosquito.  Its block design is problematic, but even more problematic are their business practices)

# Assembly:

![This is the fan after modification](ModifiedFan.png)

Step 1: Cut the ears off the 5015 fan. In order to fit, you must cut the ears (mounting holes) off the 5015 fan, and take off the top cover. the ears can be cut with diagonal clippers, hacksaw, bread knife, belt sander...whatever you have at hand. just make it look like the image above. If you cut too much its probably fine, as long as you don't damage the turbine.\
\
I have included stls for a de-earing tool. Its basically a handle/saw guide to put over the mounting tabs

Step 2: Fan test fit.\
The fan fits into AB-BN-28-Front. But we have learned that different fans have very different shapes. AB-BN is designed to allow for adjustment for your fan. Here is how I do it:\
\
Test fit the fan in AB-BN-28_Front. Looking at it from the front, move the fan around to center the turbine blades. You may need to trim your fan housing a little more. Once the fan is centered, turn this over and note where you need to add shims between AB-BN-28-front and the fan.\
\
Step 3: Spring THEN Fan\
Once you have your shims in the right spots, remove the fan and install the printed leaf spring into fan front. the little circle tab should be cut off, its a integral print support only.
![Don't forget to remove the integral print support](fanspring.png)

Insert fan into 5015 front and secure with fan spring. the spring bends back to hold the fan in place.

\
Step 4: Insert the 4010 fan in the AB-BN-28-front. This is a tight fit by design.\
\
Step 5: Carefully route the wires, they will exit the 5015 back.\
*protip: use a dab of hotglue on the fan housing to secure the wires to the fan housing*

![fans wiring](fans_wires.png)
Step 6: Insert the tabs from the AB-BN-28-Back into the front and take the wires out through the cutout


![mounting the fan spacer between extruder and fan assy](fanspacer.png)

Step 7: Assemble with the spacer as shown and secure to the extruder body.

Assemble the hotend as usual.


# ENJOY!
Please drop me a DM if you find this mod useful or you have an idea to change.
