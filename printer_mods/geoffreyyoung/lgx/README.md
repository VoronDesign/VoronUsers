# AfterBurner LGX Stuff
#### Some useful links, info, and models for LGX users...



#### AfterBurner LGX Mounts

Mounting the LXG to AfterBurner requires some additional mounting plates.

  * `lgx_AftB_Mount_Front.STL`
  * `lgx_AftB_Mount_Rear.STL`

These models are pinned in the [#voronuser_mods](https://discord.com/channels/460117602945990666/635687829254701107/823914498808217621) channel on Discord, and can be found in [this message](https://discord.com/channels/460117602945990666/635687829254701107/823914498808217621](https://discord.com/channels/460117602945990666/635687829254701107/823914498808217621).

Thanks to @Nemgrea and the crew for their efforts designing and testing the mounts.

For my own build, I found that my third-party M3x20 screws had a large enough head that the toolhead couldn't mount to the X Carriage assembly properly without a bit more clearance.  If you find yourself in this situation this model is nearly identical to the one on Discord but with slightly more clearance for the bottom screws.

  * [`lgx_AftB_Mount_Front.STL`](STLs/lgx_AftB_Mount_Front.STL)

#### Klipper config

Bondtech has some official documentation for configuring Klipper [https://www.bondtech.se/product-category/upgrade-kits/lgx/](here).  Below is the configuration I am currently running.

```
## Bondtech LGX
# use either
#    gear_ratio: 45:14, 37:17
#    rotation_distance: 55
# or
#    rotation_distance: 8
# but not both!
rotation_distance: 8
microsteps: 16
full_steps_per_rotation: 200
```

The either/or warning is not from Bondtech, but provided here to honor the memory and sacrifice of my first hotend...

#### Extra LGX Models

##### LGX Cable Cover

Besides the mounting parts, most people end up asking about a cable cover.  There are a few posted around Discord, but after seeing [Craxoor's PCB cover](https://github.com/craxoor/VoronMods/tree/master/PCB%20Cover) I designed a similar cover from scratch for use with the LGX.  Note that this cover *does not* work with the toolhead PCB - it just looks similar.

  * [`lgx-cable-cover.stl`](STLs/lgx-cable-cover.stl)

![cable_cover.jpg](images/cable_cover.jpg)
(Cereal not included)

##### LGX Gear Cover

A little cover for the Large Gears on the LGX so it doesn't chew through the fan wires.

  * [`lgx-gear-cover.stl`](STLs/lgx-gear-cover.stl)

![gear_cover.jpg](images/gear_cover.jpg)

##### LGX Lever Cover

Drop-in replacement for the filament pre-tension lever, in case you want a different color:

  * [`lgx-lever-cover.stl`](STLs/lgx-lever-cover.stl)

![lever_cover.jpg](images/lever_cover.jpg)
