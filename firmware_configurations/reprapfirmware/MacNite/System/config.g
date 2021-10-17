; Configuration file for Duet 3 (firmware version 3.3)
; executed by the firmware on start-up

; General preferences
M575 P1 S1 B57600                            ; enable support for PanelDue
G90                                          ; send absolute coordinates...
M83                                          ; ...but relative extruder moves
M550 P"Voron Trident"                         ; set printer name
M669 K1                                      ; select CoreXY mode

; Network
M552 P0.0.0.0 S1                             ; enable network and acquire dynamic address via DHCP
M586 P0 S1                                   ; enable HTTP
M586 P1 S0                                   ; disable FTP
M586 P2 S0                                   ; disable Telnet

; Drives
M569 P0.0 S0                                 ; physical drive 0.0 goes backwards
M569 P0.1 S0                                 ; physical drive 0.1 goes backwards
M569 P0.2 S0                                 ; physical drive 0.2 goes backwards
M569 P0.3 S1                                 ; physical drive 0.3 goes forwards
M569 P0.4 S1                                 ; physical drive 0.3 goes forwards
M569 P0.5 S1                                 ; physical drive 0.3 goes forwards

M584 X0.0 Y0.1 Z0.3:0.4:0.5 E0.2             ; set drive mapping
M350 X16 Y16 Z16:16:16 E16 I1                ; configure microstepping with interpolation
M92 X80 Y80 Z400:400:400 E415                ; set steps per mm
M566 X900 Y900 Z60:60:60 E120                ; set maximum instantaneous speed changes (mm/min)
M203 X60000 Y60000 Z3000:3000:3000 E6000     ; set maximum speeds (mm/min)
M201 X3000 Y3000 Z1000:1000:1000 E1000       ; set accelerations (mm/s^2)
M906 X1100 Y1100 Z1000:1000:1000 E650 I30    ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                      ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                             ; set axis minima
M208 X350 Y350 Z250 S0                       ; set axis maxima

; z-leadscrew position
M671 X388:175:-38 Y1:419:1 S20		     ; define leadscrew position, maximum correction 20mm

; Endstops
M574 X2 S1 P"io1.in"                         ; configure active-high endstop for high end on X via pin io1.in
M574 Y2 S1 P"io2.in"                         ; configure active-high endstop for high end on Y via pin io2.in
M574 Z1 S1 P"!io3.in"                        ; configure active-high endstop for low end on Z via pin io3.in

; Z-Probe
M558 P5 C"^io4.in" H15 F600 T30000          ; set Z probe type to switch and the dive height + speeds
G31 P500 X0 Y24.2 Z7.7                      ; set Z probe trigger value, offset and trigger height
M557 X15:315 Y25:325 P5                      ; define mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B4092  		 	; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                           		 	; create bed heater output on out0 and map it to sensor 0
M307 H0 B1 S1.00                             		 	; enable bang-bang mode for the bed heater and set PWM limit
M140 H0                                      		 	; map heated bed to heater 0
M143 H0 S120                                 		 	; set temperature limit for heater 0 to 120C
M308 S1 P"temp1" Y"thermistor" T100000 B4725 C7.06e-8	; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out1" T1                           		 	; create nozzle heater output on out1 and map it to sensor 1
M307 H1 B0 S1.00                             		 	; disable bang-bang mode for heater  and set PWM limit
M143 H1 S280                                 		 	; set temperature limit for heater 1 to 280C
M308 S2 P"temp2" Y"thermistor" T10000 B3950 A"Chamber"	; configure sensor 2 as thermistor on pin temp2
M308 S3 Y"mcu-temp" A"MCU"					    		; configure sensor 3 for mcu temp
M308 S4 Y"drivers" A"drivers"				   			; configure sensor 4 for drivers

; Fans
M950 F0 C"out4" Q500                         ; create fan 0 on pin out4 and set its frequency
M106 P0 S0 H-1                               ; set fan 0 value. Thermostatic control is turned off	- part cooling
M950 F1 C"out5" Q500                         ; create fan 1 on pin out5 and set its frequency
M106 P1 S0 H1 T45:55                         ; set fan 1 value. Thermostatic control is turned on	- coldend
M950 F2 C"out6" Q500                         ; create fan 2 on pin out6 and set its frequency
M106 P2 S0 H2 T40:50                         ; set fan 2 value. Thermostatic control is turned on - chamber
M950 F3 C"out2" Q500                         ; create fan 3 on pin out6 and set its frequency
M106 P3 S0 H3:4 T40:50                       ; set fan 3 value. Thermostatic control is turned on - electronics

; Tools
M563 P0 D0 H1 F0                             ; define tool 0
G10 P0 X0 Y0 Z0                              ; set tool 0 axis offsets
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M575 P1 S1 B57600							 ; enable PanelDue Support
M501                                         ; load saved parameters from non-volatile memory
T0                                           ; select first tool

