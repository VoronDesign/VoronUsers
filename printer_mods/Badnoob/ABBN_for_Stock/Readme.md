# AB-BN for Stock

This is a revised Stock toolhead for the Dragon or Rapido hotend. It takes the technology from AB-BN and ports it for use with the stock Afterburner Assembly.

This allows you to use the stock Afterburner 4020 based part cooler and reduces the potential for jamming.

The only real use case I know of for this is for someone who does not have a 5015 fan.

# Why? 

The stock Afterburner was designed for a full size E3D V6 hotend.  The Dragon uses a much smaller heatsink.  The result of this is that the bulk of the airflow bypasses the heatsink on the Dragon.

In addition, the stock toolhead blows a lot of air onto the bed.

Finally, the stock ducts tend to melt and warp over time.

I also added support for Phaetus' Rapido toolhead.


# How does this fix anything?

AB-BN was developed over the course of 2020 and 2021 to solve several issues with the stock afterburner airflow.  Dozens of prototypes were modeled, simulated, printed, and tested.  In the end I found that cooling was improved if we:
1. Use a cone to help streamline air exiting the fan.
2. Use a stator to increase static pressure.
3. Reduce the duct to force air past the heatsink

This reduces the overall airflow and increases the airflow that matters to the toolhead.

I also included the bleed air channels that help reduce part duct melting.

# Should I use this or the FULL AB-BN?

This solution is aimed at someone who wants to keep using most of the stock Afterburner, but needs a little less hotend jamming.

I recommend you use the full AB-BN if you can.

# What toolheads are supported?

I have support for Phaetus' Dragon and Rapido toolheads.

For Dragon, you do not need a new back piece, the stock dragon back is fine.

For Rapido you will need both front and back pieces.



