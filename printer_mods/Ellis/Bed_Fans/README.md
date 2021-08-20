My chamber now reaches about 63C with a quad fan configuration, whereas it only reached rougly 50C previously. Chamber temp is also reached more quickly.

## <B>Macros</B>

See <B>bedfans.cfg</B> and <B>bedfans-dualcontrol.cfg</B>* for klipper macros.

* <B>variable_threshold</B> sets the target bed temperature at which your bed fans will activate.
* <B>variable_slow</B> sets the fan speed for when the bed is heating to the target temp.
* <B>variable_fast</B> sets the fan speed for when the bed is at temperature.

The macros will intercept bed heating commands, so you do <I>not</I> need to add anything to your other macros. 

Don't forget to change the pin(s) for your fans.

\* <I>Optionally allows for setting inner and outer fan speeds separately, for a quad fan configuration. I like to set my inner fans to be run slightly slower to try and keep the airflow somewhat even.</I>


## <B>5015 Fan Mount</B>

Bill of materials:
- 1x 5015 fan
- 1x M3x25
- 1x M3x20
- 1x M3x8 or M3x10
- 1x M3 Threaded Insert

![5015 Fan Mount](Images/5015_mount_isolated.png)  

![5015 Dual](Images/5015_dual.png)  

![5015 Quad](Images/5015_quad.png)  
(a bit tight since CAD is for a 250mm)