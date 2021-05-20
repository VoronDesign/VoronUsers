G28                  ; home printer xyz
G0 Y5 X5             ; 
G1 Z0.2 F500.0       ; move bed to nozzle
G92 E0.0             ; reset extruder
G1 E4.0 F500.0       ; pre-purge prime LENGTH SHOULD MATCH YOUR PRINT_END RETRACT
G1 Z2 E10.0 F500.0     ; 
G1 Z5 E20.0 F500.0     ; 
G92 E0.0             ; reset extruder
G1 Z2.0              ; move nozzle to prevent scratch
print_start
