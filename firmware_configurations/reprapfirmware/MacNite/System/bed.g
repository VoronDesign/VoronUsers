; bed.g
; called to perform automatic bed compensation via G32

M561 ; clear any bed transform
M98 P"getprobe.g"
G30 P0 X15 Y35 Z-99999
G4 P400
G30 P1 X175 Y315 Z-99999
G4 P400
G30 P2 X340 Y35 Z-99999 S3
G4 P400
G29
M98 P"dropprobe.g"