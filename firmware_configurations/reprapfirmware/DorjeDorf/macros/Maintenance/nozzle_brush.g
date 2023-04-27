; Go to the starting point for nozzle_brush and start heating (if not already at temp).
G1 X50 Y305 Z10 F5400
M104 S200

; Drop to cleaning height and wait for temp
G1 Z4.55
M109 S200

; Start cleaning moves
G1 X100 F5400
G1 X50
G1 X100
G1 X50 
G1 X100
G1 X50
G1 X70

; Raise nozzle and finish cleaning
G1 Z10
M400