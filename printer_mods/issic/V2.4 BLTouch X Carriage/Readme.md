Purpose:
To easily swap PL-08 Probe with BLTouch 3.1.

Why:
To use any surface with Voron and remove Z-Offset problems.

What else:

BLTouch needs to be adjusted. You must remove (cut and sand) the top "wings" that normaly mount the probe.
There is no space unfortunately to keep it. This will VOID YOUR WARRANTY, do it on YOUR OWN RISK.

There is config for Klipper as well.
I use
[include bltouch.cfg] or
"#[include probe.cfg], you must remove the lines that double from printer.cfg"

What else? Z-Offset is roughly:

z_offset: 3.237

From Voron with love!
