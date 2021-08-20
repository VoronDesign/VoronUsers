My chamber now reaches about 63C with a quad fan configuration, whereas it only reached rougly 50C previously. Chamber temp is also reached more quickly.

<B>I do not recommend increasing your bed's max_power to increase heat output.</B> Since you can't control max power at runtime, your bed will run at too high of a power while heating, risking warping your bed. 

Recommended max_power is 0.4 watts per cm<sup>2</sup>.

For example, for a 300 mm^2 bed:

30 cm * 30 cm = 900 cm<sup>2</sup>
900 cm<sup>2</sup> * 0.4 Watts = 360 Watts.
If you have a 750 watt heater, that's 48% power, or 0.48 max_power.

## <B>Macros</B>

See <B>bedfans.cfg</B> and <B>bedfans-dualcontrol.cfg</B>* for klipper macros.

* <B>variable_threshold</B> sets the target bed temperature at which your bed fans will activate.
* <B>variable_slow</B> sets the fan speed for when the bed is heating to the target temp.
* <B>variable_fast</B> sets the fan speed for when the bed is at temperature.

The macros will intercept bed heating commands, so you do <I>not</I> need to add anything to your other macros. 

Don't forget to change the pin(s) for your fans.

\* <I>Optionally allows for setting inner and outer fan speeds separately, for a quad fan configuration. I like to set my inner fans to be run slightly slower to try and keep the airflow somewhat even.</I>


## <B>5015 Fan Mount</B>

Bill of materials (per fan):
- 1x 5015 fan
- 1x M3x25
- 1x M3x20
- 1x M3x8 or M3x10
- 1x M3 Threaded Insert


![5015 Fan Mount](Images/5015_mount_isolated.png)  

#### Dual fans
![5015 Dual](Images/5015_dual.png)  

#### Quad fans
Quad fans is used more for even airflow than raw airflow. If you were to set the fans to a high speed, you would outrun your bed heater.

<I>(looks a bit tight since CAD is for a 250mm)</I>
![5015 Quad](Images/5015_quad.png)  
