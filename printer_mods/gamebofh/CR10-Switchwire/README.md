# Introduction

Back in ~2017 my 16 year old son saved his money up and bought and assmbled a 300mm Creality CR-10 [1] . It was the first of the post-kickstarter systems, so had some rough edges.  There are plenty of things I don't like about it, but for its cost and time, it's a pretty amazing machine.  When COVID hit and I started printing a bunch of faceshield pieces for Masks4Docs it was a workhorse. But, I kept doing more and more mods to it, but wasn't very reliable.  Finally the SKR controller board (that had replaced the original) broke.  (One day both the bed and hotend thermistors slowly started reading strange numbers).  At that point I was done, and thus began me building a Voron 2.4.

But, I have this perfectly good frame, with motors and some spare parts left over from my 2.4 build...

So I decided to build a CR10, Switchwire.  This repo will be my working notes.

# Design goal

Keep as much of the CR10 stock as possible.  Ideally, you would be able to reverse this mod and have a CR10 back.  Also, ideally, you would never want to.

* Stock frame
* Existing motors  (except extruder, which is going direct drive)
* 12V power supply (which results in a bunch of downstream dependencies)
* DC bed heater.  (I may change my mind on this, seeing how terrible it is and it wasn't great to work with.)

But, I'm not going to be unreasonable here.

* I had already replaced the stock CR10 hotend a long time ago.  I'll go with Afterburner/Stealthburner here.
* Going to run klipper
  * This means I need a Raspberry Pi
  * Also I'll probably have a dedicated 5V power supply

# Current status

* The electronics are mostly working and I have a "wire harness" in.
* Hotend is assembled, but not wired up.
* Klipper boots and is happy
* Can buzz all the motors
* Have temperature from both thermistors
* Can heat the bed

You can see the progress over in the [progress pics](progress.md).

# Upcoming problems

* Bed height/leveling is going to be an issue.  Can't pull the bed down too low against the springs because the bolts can hit the cable chain.  Might need shorter bolts.
* Binding/leveling on the z-axis.  It's not very good right now.


# Iteration

Initially I was going to try to reconfigure the frame to get as close to the default SwitchWire as possble.  But that was resulting in some compromises and would have resulted in drilling the existing frame a few times.  Not a deal breaker since extra holes wouldn't prevent it from being reversible, but the orientation of the frame pieces also ended up resulting in challenges with how things would mount and probably having to go modify most of the XZ axies.  

Then someone on Discord had mocked up a SwitchWire with the original frame configuration, and used the Trident feet/skirts.  That had the advantage of making the XZ pretty stock, and only requiring mods to the Y.  There were already some mods that did something similar, so went down that route.

# Y-axis

I'm going to use the [Ender_SW](https://github.com/boubounokefalos/Ender_SW) mod for this.  The reason is that I don't have a spare 2020 aluminum extrusion to run the stock SwitchWire, and I was starting to run into all sorts of issues trying to go with 2040 aluminum extrusion that is from the CR10 frame.  Since that's closer to the stock CR10 and it simplifies XZ axis, I opted to mod the Y-axis and go stock on the XZ axis.  Especially since this Y-axis mod is a two linear rail setup, which has to be twice as good as one, right?

* You do want to add stops for the Y-axis lineral rails since the expectation was they go until they hit the front idler, and that's what prevents the carriages from coming off the rails.  I just printed some extra Z-axis stop pieces and put them at the front.

## Things you have to change

* You need to use an m5 tap on the ends of the Y-axis gantry 2040 aluminum extrusion.  Maybe not need, but it's what I did.  It helps with the motor/idler mouting.
* You'll need to drill holes in the bed plate to center it on the new gantry.  See the [progress photos](progress.md).

### Problems this causes for you

* This whole system sits lower than the stock Switchwire.  
  * This means that the carriages will now sit lower than the deck plate you want to install (to get cereal'd).  
    * My solve this this was to modify the DIN rail mounts to allow the DIN rails to be lower.  I should probably have just CAD'd them from scratch, but I didn't, so they have some small bits of extra "character"
      * But, this now meant that if you use the (new and better) Trident DIN mounts, the 12V power supply sits lower than where the bottom panel lines up.  
        * So, I used the (inferior but shorter) 2.4r1 PS DIN mounts to recover that height.

# XZ-axis

The first problem here is that the existing 2020 that used to hold the X-axis is too wide.  If you try to reuse it, then the belts from the motors would hit it.  So you'd have to modify the motor mounts to go further out.  Then, the pulleys at the top need to be modified.  Then... I decided I wasn't ready for that level of modification yet.  So, you can either chop down your existing 2020 (which is *not* reversible) or order a new one.  

## How I solved this
* I bought a 38cm piece of 2020 extrusion from Misumi.  I might have measured that after a few drinks though, because I should have bought a 39cm piece of 2020 extrusion.  It works, but now you know.

Well, while I was waiting for StealthBurner to come out of beta so it could have a toolhead PCB so I didn't have to wire things, I decided to finally just belt up XZ, because it would be easy.  This is the first place that the difference between 2020 and 3030 has bitten me (that I know of so far).  It makes subtle changes in alignment, so that suddenly the belt wouldn't line up from the top Z idlers down to/past the X gantry.

## How I'm hoping to solve this (because I haven't yet)

I went ahead and pulled the piece out of the cad and then created a parameter for thickness and added 10mm.  It's a big chonky thing, and I now need longer bolts, but it looks like it will work.  It's so ugly though, will probably need a redesign.  Given that, haven't added CAD and STL, but available upon request.

# Below the belt (aka skirts & electronics)

* Went with Trident feet to get height
* Will need to figure out skirts, especially since I went with a split switch and power inlet, because I hate reaching around.  Take that however you will.
  * I went ahead and did this, and I can tell you it was worth it.  The side switch should be stock.

In general the footprint is really close to the 250mm Trident for the front and back, and the 350mm Trident for the sides.  

## What I did

### Rear skirts
* Split the power inlet from the switch.  
  * I could have just blanked out the switch, but that would have looked meh, so I decided to have it be a keystone slot instead.  But, if you look at the CAD on the keystone slots, it's a bit more finicky than you would expect (not just rectangular holes), so instead I blanked one of those and then put the power inlet there. 
    * This means the power switch is now on the right (as you look at the machine), so to use the original keystone plate, you need to mirror it to be on the left.
  * The footprint is a little narrower than the 250, so I scaled the center rear panel (unlocked, so only one dimension) from 117mm to 100mm on the X axis.
    * But, things you don't think about.  The bolts for the center rail run through the middle of this extrusion.  Your drop in nuts won't hit it, but the slight raised part on the skirt, meant to slide into that slot, now slightly hits those bolts.  Means that you end up having to work a little extra hard to get the bolts in that hold that piece of the skirt.

### Side skirts

* I filled and then cut the front right skirt to include the switch.  Yes, I'm glad I did it, having the switch easy to access is so much better.
* The footprint is again, slightly smaller, so I scaled one of the skirt pieces down to ~124mm in the long axis to get it to fit.
* I *despise* VHB tape, so I went with the new (2.4r2) mounts for the fans and the blank fan pieces.  This works great, except...
  * The mounts for the A/B motors interferes with the fan cover in one of the corners of one plate on each side.  It's not elegant, but I just trimmed and filed that to allow it to fit in.  Was able to screw them in with flat head screws, but it's a bit hacky. (Visible in the [progress picks](progress.md))

### Electronics

I had a 1 meter piece of DIN rail.  Since the space is 32cm (I think) across, I actually went with three, and have the center one with a cable raceway to make it all nice and pretty.

Note on cable raceway: I tried the printed ones, but ABS is just too brittle for them and they would break, so broke down (heh) and bought them from Amazon.

# Extra/modified CAD items

* Wago mount for bed wiring
* Lowered DIN mounts
* Side skirt with switch
* Back power inlet
* Y-axis tensioner, now with more attitude
* More linear rail stops
* SKR holder for DIN mount

# Stuff you have to buy

* 20t pulley
* gates 6mm belt (had this as a spare from 2.4 build)
* bearings
* various screws (will probably detail later)
* filament (for printing parts)
* Keybak (13 oz)
* linear rails
* wire (wow, a lot of it)
* cable chains
* heatsets
* 5 MGNH12 rails.  
  * The biggest I could find easily were 400mm.  On Z I think you could go to 450, so maybe in the future I'll change that since it would just be a rail swap and not much other change. 
  * You need 4x 400
  * 1x 350 for the X axis gantry
* JST-PH 2.0 connectors (for motors) [Amazon link](https://smile.amazon.com/gp/product/B09DBHG6NW/ref=ppx_yo_dt_b_asin_title_o07_s00?ie=UTF8&psc=1)

## Stuff you might have
* Blue loctite

## Not really necessary, but I did anyway

* 5v PSU
* Power inlet and switch

# CAD

In general my goal is to change as few things as possible.  I might actually copy all of the CAD files here in the future to simply give you one place to download them, but not for now.  But, here are a list of things I changed:

* [Stealth Idler](STL/y-gantry/ender_sw_stealth_idler.stl)
  * I provide the f3d and step files.  This mod addressess two issues:
    * I wanted to be able to put screws into a threaded m5 hole in the 2040
    * I did not like the look of the standard idler.  Given the recently released StealthBurner, I figured I'd do a bad version of that for the outer idler.  The inner remains unchanged.
* [Mounts](STL/mounts/)
  * Because the Switchwire assumes you're mounting everything to the extrusions, and I'm using DIN, I needed a bracket for the SKR to mount to the DIN holder.  This bracket isn't perfect, but it's close enough for now.
  * Also, while I was at it, I made one for an Arduino Uno.  This is really to be a secondary MCU for my 2.4, but I'm putting it here for now, because why not.
* [Offset DIN mount](STL/mounts/offset-din-rail-mount.stl)
  * As described above, in the "cascading consequences" of the Y-axis, here are the files for the offset DIN mounts.  A little ugly because I didn't want to have to CAD in the profile of the DIN rail.  I should really learn how to start with a body to make that easier.
* [Power Skirts](STL/skirts)
  * This contains the files for both the power inlet (with keystone) and the (right) side skirt with a hole for the switch.  I made some minor mods on the power inlet after I printed mine, to correct some issues, but haven't printed/tested it, so buyer beware.

# Helpful Hints

* There is currently a SKR Mini E3 V3 config file for the switchwire.  As a result, when you get done fixing various pin definitions in printer.cfg, klipper just shuts down complaining about ADC pin.
  * I think it's the sensor pin on the heater bed that changed between V2 and V3.  New sensor pin is PC4.

* I am inordinately happy with the fact that I have the original CR10 display working now. It has terrible resolution.  It's a bad size.  But I love it because it maintains the original (even if I now have to go buy/make a longer ribbon cable).  Here are the values I used for the config to get the display to work.  

<pre>
[display]
lcd_type: st7920
cs_pin: PB8
sclk_pin: PB9
sid_pin: PD6
encoder_pins: ^PA10, ^PA9
#encoder_pins: ^EXP1_5, ^EXP1_3
click_pin: ^!PA15
#kill_pin: ^!EXP2_8

[output_pin beeper]
pin: PB5
</pre>

# Notes

[1] Officially it's CR-10, not CR10, but no one really cares and the latter is more commonly used, so I'll go with that going forward.  Or randomly.
