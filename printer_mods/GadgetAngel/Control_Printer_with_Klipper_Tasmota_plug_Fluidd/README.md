# Control a Printer with Klipper & Tasmota plug & Fluidd

## Purpose of this Repository

I want to control the power going to my Meanwell power supply (PSU) so that I can keep my Raspberry Pi powered up all the time but control when the 3D printer's power (or the power going to my Bigtreetech's motherboard for my 3D printer).

This way I can reboot the 3D printer without having to Reboot the Raspberry Pi.

## Method

1.  First I had to find a smart plug that I could assign a permenant IP address to inside my home WIFI network.  After investigating, I found that a Sonoff S31 plug could be flashed with Tasmota firmware and be interfaced with Moonraker which then could be used inside a G-code Macro for Klipper.

2. Here is the Amazon link for the Sonoff S31 plugs that I purchased: https://www.amazon.com/Sonoff-Monitoring-Certified-Assistant-Supporting/dp/B08GKGS197/

3. You will also need to use a "FTDI Mini USB to TTL Serial Converter" Adapter Module which can be found at https://www.amazon.com/HiLetgo-FT232RL-Converter-Adapter-Breakout/dp/B00IJXZQ7C/

4. Now watch the video in the section titled "Watch this video on how to flash Tasmota firmware onto the Sonoff S31 power monitoring Plug:" below.

    4A.  Before watching the below video I want to add some additional information that will make your life easier.  When soldering on the Dupont jumper cables to the Sonoff S31 WIFI board please use some "AMTECH NC-559-V2-TF is a Universal no-clean tacky solder flux" which I buy from https://northridgefix.com/product/amtech-nc-559-v2-tf-flux-10ml-syringe-plunger-2-needle-sizes/ . Do not buy this stuff off of Amazon or Ebay because it will not be the genuine stuff.  This flux is the stuff you will need to use to clean the solder pads on the Sonoff S31 WIFI board.  I would also dip the ends of the Dupont wire jumper cables (bare wire end of the Dupont wire jumper) into this flux so that you can place some solder on the ends of the Dupont jumper wires before you try to solder them onto the WIFI solder pads.

    4B.  I also used a PanaVise 301 Standard Vise to hold the sonoff S31 while I solder on the Dupont jumper cables to the WIFI board.  The PanaVise can be found at https://www.amazon.com/Panavise-301-PanaVise-Standard/dp/B0002BC1AY/

    4C.  After you have the Dupont jumper cables soldered to the Sonoff S31 WIFI board, carefully place them onto the "FTDI Mini USB to TTL Serial Converter" Adapter Module by connecting the following: GND from the WIFI board to GND on the FTDI USB-to-TTL Adapter Module; VCC (3.3V) from the WIFI board to VCC (which is set for 3.3V) on the FTDI USB-to-TLL Adapter Module; RX from the WIFI board to TX on the FTDI USB-to-TTL Adapter Module; TX from the WIFI board to RX on the FTDI USB-to-TTL Adapter Module. DO NOT plug the USB cable into the computer yet, just connect up the Dupont jumper cables.

    4D.  After the Dupont jumper cables have been hooked up to the FTDI USB-to-TTL Adapter Module, you will need to Bridge GPIO0 and GND by pressing the on-board button connected to the WIFI board while plugging in the USB-A cable to your computer.  IF you DO NOT press the GPIO0 button while plugging in the USB cable to your computer, you WILL NOT place the Sonoff S31 WIFI board into flash mode.  So ensure you hold down the GPIO0 button while plugging in the USB cable.  I made this mistake.  If the Sonoff S31 does not flash the Tasmota firmware it is because the Sonoff S31 was not place in flash mode correctly.  Now go watch the video and complete the steps to setup and configure the Sonoff S31 plug that are discussed in the video.

5.  Now that you have the Sonoff S31 plug flashed with Tasmota firmware and configured with a permenant IP address on you WIFI network, we now need to add it to Moonraker so that we can use it inside G-code macro for Klipper.

6.  The next steps are to follow the Mooraker documentation to define the Sonoff plug.  For resource reference see https://moonraker.readthedocs.io/en/latest/configuration/#power and read it then scroll down until you see the section labbled "Tasmota Configuration".

7. This is how I defined my Sonoff plugs in my moonraker.conf file:
```
[power sonoff_1_plug]
# this plug is for the host machine (the 3D printer's motherboard and PSU)
type: tasmota
locked_while_printing: True
#   If True, locks the device so that the power cannot be changed while the
#   printer is printing. This is useful to avert an accidental shutdown to
#   the printer's power.  The default is False.
address: 192.168.1.145
#   A valid ip address or hostname for the tasmota device.  This parameter must be provided.
password:
#   A password used to authenticate requests.  Default is no password.
timer: 12
#    A time (in seconds) after which the device will power off after being.
#    told to switch off. This effectively turns the device into a  momentary switch.
#    This option is available for gpio, klipper_device, tplink_smartplug,
#    shelly, and tasmota devices.  The timer may be a floating point value
#    for gpio types, it should be an integer for all other types.  The
#    default is no timer is set.
output_id: 1
#   The output_id (or relay id) to use if the Tasmota device supports more than one output.  Default is 1.

[power sonoff_2_plug]
# this plug is for Klipper or Raspberry Pi board
type: tasmota
#   Note: If your single-relay Tasmota device switches on/off successfully, but fails to report its state, ensure that 'SetOption26' is set in Tasmota.
##off_when_shutdown: False
#   If set to True the device will be powered off when Klipper enters
#   the "shutdown" state, not the host machine only Klipper or Raspberry Pi.  This option applies to all device types.
#   The default is False.
##off_when_shutdown_delay: 0 #30
#   If "off_when_shutdown" is set, this option specifies the amount of time
#   (in seconds) to wait before turning the device off. Default is 0 seconds.
##on_when_job_queued: False
#   If set to True the device will power on if a job is queued while the
#   device is off.  This allows for an automated "upload, power on, and
#   print" approach directly from the slicer, see the configuration example
#   below for details. The default is False.
locked_while_printing: True
#   If True, locks the device so that the power cannot be changed while the
#   printer is printing. This is useful to avert an accidental shutdown to
#   the printer's power.  The default is False.
##restart_klipper_when_powered: False
#   If set to True, Moonraker will schedule a "FIRMWARE_RESTART" to command
#   after the device has been powered on. If it isn't possible to immediately
#   schedule a firmware restart (ie: Klippy is disconnected), the restart
#   will be postponed until Klippy reconnects and reports that startup is
#   complete.  Prior to scheduling the restart command the power device will
#   always check Klippy's state.  If Klippy reports that it is "ready", the
#   FIRMWARE_RESTART will be aborted as unnecessary.
#   The default is False.
##restart_delay: 1
#   If "restart_klipper_when_powered" is set, this option specifies the amount
#   of time (in seconds) to delay the restart.  Default is 1 second.
##bound_service:
#   Can be set to any service Moonraker is authorized to manage with the
#   exception of the moonraker service itself. See the tip below this section
#   for details on what services are authorized.  When a bound service has
#   been set the service will be started when the device powers on and stopped
#   when the device powers off.  The default is no service is bound to the
#   device.
address: 192.168.1.146
#   A valid ip address or hostname for the tasmota device.  This parameter must be provided.
password:
#   A password used to authenticate requests.  Default is no password.
timer: 30
output_id: 1
#   The output_id (or relay id) to use if the Tasmota device supports more than one output.  Default is 1.

```

8. This is how I defined my Macros that use the Sonoff plugs in my printer.cfg file (this is only the section of my printer.cfg file that pertains to using the sonoff plugs and my PRINT_START and END_PRINT or PRINT_END macros):

```
[gcode_macro HEATSOAK]
gcode:
  {% set BED_TEMP = params.BED_TEMP|default(60)|float %}
  {% set EXTRUDER_TEMP = params.EXTRUDER_TEMP|default(220)|float %}
  M117 Heatsoak started from HEATSOAK
  M118 Heatsoak started from HEATSOAK
  # Set bed temperature
	M140 S{BED_TEMP+5}
  { action_respond_info("Heated Bed set to BED_TEMP+5 from HEATSOAK: %d" % (BED_TEMP+5)|float) }
  # Set and wait for nozzle to reach temperature
  M109 S{EXTRUDER_TEMP}
  # Home printer
	#G28
  # Move Z Axis to 50mm
	G1 Z25
  # Move X to 132 and Y to 150
	G1 X132 Y150
  # Set bed temperature and wait
	M190 S{BED_TEMP+5}
  { action_respond_info("Heated Bed set and wait BED_TEMP+5 from HEATSOAK: %d" % (BED_TEMP+5)|float) }
  # Turn on Hotend fan
	PART_COOLING_FAN_ON
  # Wait 5 minutes Pxxx where xxx is in milliseconds
	G4 P300000
  # Set bed temperature and wait
	M190 S{BED_TEMP}
  { action_respond_info("Heated Bed set and wait back to BED_TEMP from HEATSOAK: %d" % BED_TEMP|float) }
  # Set bed temperature
	#M140 S0
  # Turn off hotend fan
	PART_COOLING_FAN_OFF
  M117 Heatsoak Finished from HEATSOAK
  M118 Heatsoak Finished from HEATSOAK

[gcode_macro POWER_OFF_PLUG1]
gcode:
  {action_call_remote_method("set_device_power",
                             device="sonoff_1_plug",
                             state="off")}

[gcode_macro POWER_ON_PLUG1]
gcode:
  {action_call_remote_method("set_device_power",
                             device="sonoff_1_plug",
                             state="on")}

[gcode_macro POWER_OFF_PLUG2]
gcode:
  {action_call_remote_method("set_device_power",
                             device="sonoff_2_plug",
                             state="off")}

[gcode_macro TURNOFF_CHANGE]
variable_turnoff=0
gcode:
    SET_GCODE_VARIABLE MACRO=TURNOFF_CHANGE VARIABLE=turnoff VALUE={params.S|default(1)|int}

[gcode_macro TURNOFF_PI_CHANGE]
variable_pi_turnoff=0
gcode:
    SET_GCODE_VARIABLE MACRO=TURNOFF_PI_CHANGE VARIABLE=pi_turnoff VALUE={params.S|default(1)|int}

[gcode_macro POWER_OFF_PRINTER_AFTER_PRINT]
gcode:
  TURNOFF_CHANGE S=1

[gcode_macro KEEP_POWER_ON_PRINTER_AFTER_PRINT]
gcode:
  TURNOFF_CHANGE S=0

[gcode_macro POWER_OFF_PI_AFTER_PRINT]
gcode:
  TURNOFF_PI_CHANGE S=1

[gcode_macro KEEP_POWER_ON_PI_AFTER_PRINT]
gcode:
  TURNOFF_PI_CHANGE S=0

[gcode_macro TURN_OFF_MOTORS]
gcode:
  M84

[gcode_macro SHUTDOWN_PI]
gcode:
   {action_call_remote_method("shutdown_machine")}

[gcode_macro SEND_POWER_OFF]:
gcode:
  POWER_OFF_PLUG1

[gcode_macro SEND_POWER_PI_OFF]:
gcode:
  POWER_OFF_PLUG2

[idle_timeout]
timeout: 1800
gcode:
  UPDATE_DELAYED_GCODE ID=delayed_printer_off DURATION=60

[gcode_macro NOW_POWER_OFF_PRINTER]
gcode:
  TEMPERATURE_WAIT SENSOR=extruder MAXIMUM=30      #Don't switch off when hot
  TURN_OFF_MOTORS
  TURN_OFF_HEATERS
  SEND_POWER_OFF
  
[gcode_macro NOW_POWER_OFF_PI]
gcode:
  SEND_POWER_PI_OFF
  SHUTDOWN_PI

[delayed_gcode delayed_printer_off]
initial_duration: 0
#   The duration of the initial delay (in seconds). If set to a
#   non-zero value the delayed_gcode will execute the specified number
#   of seconds after the printer enters the "ready" state. This can be
#   useful for initialization procedures or a repeating delayed_gcode.
#   If set to 0 the delayed_gcode will not execute on startup.
#   Default is 0.
gcode:
  {% if printer.idle_timeout.state == "Idle" %}
      NOW_POWER_OFF_PRINTER
  {% endif %}

[delayed_gcode delayed_pi_off]
initial_duration: 0
#   The duration of the initial delay (in seconds). If set to a
#   non-zero value the delayed_gcode will execute the specified number
#   of seconds after the printer enters the "ready" state. This can be
#   useful for initialization procedures or a repeating delayed_gcode.
#   If set to 0 the delayed_gcode will not execute on startup.
#   Default is 0.
gcode:
  {% if printer.idle_timeout.state != "Printing" %}
      NOW_POWER_OFF_PI
  {% endif %}

[gcode_macro PRINT_START]
gcode:
  {% set BED_TEMP = params.BED_TEMP|default(60)|float %}
  {% set EXTRUDER_TEMP = params.EXTRUDER_TEMP|default(220)|float %}
  # Home
  M117 Homing from PRINT_START
  M118 Homing from PRINT_START
  G28
  M117 Waiting on bed from PRINT_START
  M118 Waiting on bed from PRINT_START
  M190 S{BED_TEMP}
  # Pre-heat extruder to 160
  M104 S160
  # Set GCODE offset
  SET_GCODE_OFFSET Z=0.0
  SET_GCODE_OFFSET Z_ADJUST=-0.80 MOVE=1
  # Move Z up
  G1 Z10.0 F3000
  # Reset extruder
  G92 E0
  # Set extruder temperature
  M117 Waiting on nozzle from PRINT_START
  M118 Waiting on nozzle from PRINT_START
  # set extruder temperature
  M104 S{EXTRUDER_TEMP}
  # Move Z axis up a little to prevent scratching heat bed
  G1 Z2.0 F3000
  # Move to start position
  G1 X10.1 Y20 Z2.0 F5000.0
  # Wait for Extruder temperature
  M109 S{EXTRUDER_TEMP}
  # Do a fresh Bed mesh
  M117 Calling Bed_Mesh_Generate_Hot from PRINT_START
  M118 Calling Bed_Mesh_Generate_Hot from PRINT_START
  Bed_Mesh_Generate_Hot BED_TEMP={BED_TEMP} EXTRUDER_TEMP={EXTRUDER_TEMP} PRINT_MIN={params.PRINT_MIN} PRINT_MAX={params.PRINT_MAX}
  M117 Waiting on nozzle
  M118 Waiting on nozzle
  # set extruder temperature
  M104 S{EXTRUDER_TEMP}
  # Wait for Extruder temperature
  M109 S{EXTRUDER_TEMP}
  M117 Waiting on bed
  M118 Waiting on bed
  M190 S{BED_TEMP}
  POWER_OFF_PRINTER_AFTER_PRINT
  #KEEP_POWER_ON_PRINTER_AFTER_PRINT
  KEEP_POWER_ON_PI_AFTER_PRINT
  #POWER_OFF_PI_AFTER_PRINT
  M117 Purging from PRINT_START
  M118 Purging from PRINT_START
  PRIME_EXTRUDER
  M117 Printing from PRINT_START
  M118 Printing from PRINT_START

[gcode_macro PRINT_END]
gcode:
  SAVE_GCODE_STATE NAME=my_END_PRINT_state
  # Set to Relative Positioning
   G91
   # Retract a bit
   G1 E-2 F2700
   G1 E-2 Z0.2 F2400
   G1 X5 Y5 F3000
   # Turn off bed, extruder, and fan
   M140 S0
   M104 S0
   PART_COOLING_FAN_OFF
   # Raise nozzle by 10mm
   G1 Z10 F3000
   # Set to Absolute Positioning
   G90
   # Deliver print
   G1 X0 Y235
   # Set to Relative Positioning
   G91
   RESTORE_GCODE_STATE NAME=my_END_PRINT_state
   M117 Print complete
   M118 Print complete
   {% if printer["gcode_macro TURNOFF_CHANGE"].turnoff|int > 0 %}
      UPDATE_DELAYED_GCODE ID=delayed_printer_off DURATION=60
   {% endif %}
   {% if printer["gcode_macro TURNOFF_PI_CHANGE"].pi_turnoff|int > 0 %}
      UPDATE_DELAYED_GCODE ID=delayed_pi_off DURATION=60
   {% endif %}

[gcode_macro END_PRINT]
gcode:
  PRINT_END
```

9.  Please read the following to understand how to use some of these macros: https://github.com/Arksine/moonraker/issues/366#issuecomment-1086890794

### Watch this video on how to flash Tasmota firmware onto the Sonoff S31 power monitoring Plug:

https://youtu.be/kKtLKjI4wA0
