# Bad Dragon Hotend
![One Bad Dragon](bad_dragon_profile.png?raw=true)
### Overview
This mod is my attempt to fix two minor issues with the standard (otherwise EXCELLENT!) Dragon Hotend for V2.4 and V1.8

**Disclaimer:

It is your printer.  If you do this and something breaks or if someone gets hurt, it is fully your responsibility.  I take no responsibility.**

#### Special thanks
I want to say **Thank You** to the Voron design team.  I've really enjoyed learning from you.  Thank you for sharing your files and advice.

#### Issues:

I had two main issues with the stock dragon mount:
* I was getting hotend jams when I switched to using the Dragon.
I have been using E3D V6 hotends in AB style ducts for months now without a single jam.  E3D's exchanger is less efficient, but it gets much more airflow from the stock hotend mount:

* I was overheating the fan ducts at the bottom of the hotend.  
I think this is because they were a little too close to the hotend.  the edge would get soft and sticky and warp.  occaisionally it would collide with a print and crack.  Another issue is the nozzles were directing air on the heater block rather than the print.

![too hot](overheating.jpg?raw=true)

#### Materials needed
* Spec Voron 2.4/V1.8
* Dragon Hotend
Print the new front STL, its a direct replacement for the stock piece.


### How and Why


#### Print cooling ducts
To prevent the fan ducts from overheating, I cut the fan nozzles back, and at an angle.  this should both increase the distance between block and nozzle, and also increas the cross section thickness.  Finally a chamfer reduces the chance that an edge gets caught.
![Comparing the outlets](Comparing_nozzles.png?raw=true)

#### Hotend fan duct
![Original](Original.jpg?raw=true)

Looking at the original dragon mount, It doesn't look like there is much air getting to the heat exchanger.
As a first step, I layered some VHB tape inside the stock duct to see if that would help.  The jams disappeared.

![Original](VHB.jpg?raw=true)

in Fusion 360, I added some check pieces inside the the duct.  The cheek peices are designed to increase air velocity and direct more air to the heatexchanger.

![Detail of the duct interior](Cheeky.png?raw=true)

In the original duct, the ratio of Inlet area/Outlet area is 1200/900= 1.33.  In Bad_Dragon its 1200/740 = 1.62. This gives us better velocity at the heat exchanger, giving better heat transfer.

![Comparing the outlets](Bad_Dragon.png?raw=true)

### SCIENCE!
![Experimental Setup](Science.png?raw=true)
I wanted to compare the performance of the 3 ducts I tried.  Using a K-type thermocouple, I carefully fed it down into the feed tube to take measurements at the top of the heatexchanger inside the feedtube.  

I then ran 4 experiments heating the hotend up and recording the tube temperature:
1) Original Duct, hotend at 235C
2) Original + VHB tape, hotend at 235C
3) Bad_dragon, hotend at 235C
4) Bad_dragon, hotend at 250C
Notes: I let the temperature stabilize for 4 minutes before taking measurements.  I used the same hotend for all experiments, changing the front shroud only.  I was careful to get the thermocouple in the same position when switching shrouds.

![Temperature charts](Tube_temp.png?raw=true)
I've included my data in  temp_data.xlsx

The data shows that Bad_Dragon did a better job than either the stock or stock with VHB tape.  Increasing the Hotend by 15 degrees only increased the tube temp by 3 degrees.

 The fan remained constant for all the tests **except** the test of the original shroud.  it could be heard speeding up starting around 6 minutes in. There is no control circuit on that fan...I think there was some kind of voltage drop on the 24V rail.  I don't know why it was only observed in one of the 4 tests.

