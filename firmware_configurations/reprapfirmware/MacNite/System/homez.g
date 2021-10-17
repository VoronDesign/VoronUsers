; homez.g
; called to home the Z axis

G91
G1 H2 Z15 F12000   ; lift Z relative to current position
G90

M98 P"getprobe.g"
G1 X175 Y175 F30000
G30
G1 Z15 F1800
M98 P"dropprobe.g"
;M98 P"toollength.g"