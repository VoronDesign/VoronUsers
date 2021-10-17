; homeall.g
; called to home all axes
;

; home x & y
G91              ; relative positioning
G1 H2 Z15 F30000 ; lift Z relative to current position
G1 H1 X355 F12000; move quickly to X axis endstop and stop there (first pass)
G1 X-5 F30000    ; go back a few mm
G1 H1 X355 F360  ; move slowly to X axis endstop once more (second pass)

G1 H1 Y355 F12000; move quickly to Y axis endstop and stop there (first pass)
G1 Y-5 F30000    ; go back a few mm
G1 H1 Y355 F360  ; move slowly to Y axis endstop once more (second pass)
G90              ; absolute positioning

; home z
M98 P"getprobe.g"		
G1 X175 Y175 F30000
G30
G1 Z15 F1800
M98 P"dropprobe.g"
;M98 P"toollength.g"