M83  ; set extruder to relative mode
G21  ; set units to mm

T0  ; select tool 0

G92 E0.0  ; reset extruder position
M220 S100 ; reset speed multiplier

; reset firmware retraction
M207 S5.0 F5000 T3200 Z0.4

; level the gantry while everything is hot
G32

M98 P"/macros/print_scripts/goto_bucket.g"
M98 P"/macros/print_scripts/do_nozzle_wipe.g"
