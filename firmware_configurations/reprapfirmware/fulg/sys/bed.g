; bed.g
; called to perform automatic bed compensation via G32

; Clear any bed transform
M561

; Home all axes
G28

; Activate the z probe and lower the z motor currents
M98 P"/macros/print_scripts/activate_z_probe.g"
M98 P"/macros/print_scripts/z_current_low.g"

; Lower AB currents
M98 P"/macros/print_scripts/xy_current_low.g"

; Setup low speed & accel
M98 P"/macros/print_scripts/speed_probing.g"

; Probe the bed at 4 points
M98 P"/sys/bed_probe_points.g"

; Repeat right away for more precision
M98 P"/sys/bed_probe_points.g"

; Repeat right away for more precision
M98 P"/sys/bed_probe_points.g"

; Final Z height adjust
M98 P"/macros/print_scripts/do_z_switch_probe.g"
;M98 P"/macros/print_scripts/goto_bed_center.g"

; Restore normal speed & accel
M98 P"/macros/print_scripts/speed_printing.g"

; Restore high current and make sure Z probe is active
M98 P"/macros/print_scripts/xy_current_high.g"
M98 P"/macros/print_scripts/z_current_high.g"

; Load previously probed bed mesh
G29 S1