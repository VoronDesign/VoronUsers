# Introduction

Back in ~2017 my 16 year old son saved his money up and bought and assmbled a 300mm Creality CR-10 [1] . It was the first of the post-kickstarter systems, so had some rough edges.  There are plenty of things I don't like about it, but for its cost and time, it's a pretty amazing machine.  When COVID hit and I started printing a bunch of faceshield pieces for Masks4Docs it was a workhorse. But, I kept doing more and more mods to it, but wasn't very reliable.  Finally the SKR controller board (that had replaced the original) broke.  (One day both the bed and hotend thermistors slowly started reading strange numbers).  At that point I was done, and thus began me building a Voron 2.4.

But, I have this perfectly good frame, with motors and some spare parts left over from my 2.4 build...

So I decided to build a CR10, Switchwire.  This repo will be my working notes.

# Design goal

Keep as much of the CR10 stock as possible.  Ideally, you would be able to reverse this mod and have a CR10 back.  Also, ideally, you would never want to.

* Stock frame
* Existing motors
* 12V power supply (which results in a bunch of downstream dependencies)
* DC bed heater.  (I may change my mind on this, seeing how terrible it is and it wasn't great to work with.)

But, I'm not going to be unreasonable here.

* I had already replaced the stock CR10 hotend a long time ago.  I'll go with Afterburner/Stealthburner here.
* Going to run klipper
** This means I need a Raspberry Pi
** Also I'll probably have a dedicated 5V powersupply

# Iteration

Initially I was going to try to reconfigure the frame to get as close to the default SW as possble.  But that was resulting in some compromises and would have resulted in drilling the existing frame a few times.  Not a deal breaker since extra holes wouldn't prevent it from being reversible, but the orientation of the frame pieces also ended up resulting in challenges with how things would mount and probably having to go modify most of the XZ axies.  

Then someone on Discord had mocked up a SW with the original frame configuration.  That had the advantage of making the XZ pretty stock, and only requiring mods to the Y.  There were already some mods that did something similar, so went down that route.

# Y-axis

I'm going to use the [Ender_SW](https://github.com/boubounokefalos/Ender_SW) mod for this.  The reason is that I don't have a spare 2020 to run the stock SW, and I was starting to run into all sorts of issues trying to go with 2040.  Since that's closer to the stock CR10 and it simplifies XZ, I opted to mod here and go stock on XZ.  Especially since this is a two linear rail setup, which has to be twice as good as one, right?

## Things you have to change

* You need to use an m5 tap on the ends of the y-axis gantry 2040.  Maybe not need, but it's what I did.

# XZ-axis

The first problem here is that the existing 2020 that used to hold the X-axis is too wide.  If you try to reuse it, then the belts from the motors would hit it.  So you'd have to modify the motor mounts to go further out.  Then, the pulleys at the top need to be modified.  Then... I decided I wasn't ready for that level of modification yet.  So, you can either chop down your existing 2020 (which is *not* reversible) or order a new one.  


# Stuff you have to buy

* 20t pulley
* gates 6mm belt (had this as a spare from 2.4 build)
* bearings
* various screws (will detail later)
* filament (for printing parts)
* Keybak (13 oz)
* linear rails
* wire
* cable chains


## Stuff you might have
* Blue loctite

## Not really necessary, but I did anyway

* 5v PSU
* Power inlet and switch



# CAD

In general my goal is to change as few things as possible.  I might actually copy all of the CAD files here in the future to simply give you one place to download them, but not for now.  But, here are a list of things I changed:

* [Stealth Idler](CAD/y-gantry/ender_sw_stealth_idler.f3d)
** I provide the f3d and step files.  This mod addressess two issues:
*** I wanted to be able to put screws into a threaded m5 hole in the 2040
*** I did not like the look of the standard idler.  Given the recently released StealthBurner, I figured I'd do a bad version of that for the outer idler.  The inner remains unchanged.

# Notes

[1] Officially it's CR-10, not CR10, but no one really cares and the latter is more commonly used, so I'll go with that going forward.  Or randomly.
