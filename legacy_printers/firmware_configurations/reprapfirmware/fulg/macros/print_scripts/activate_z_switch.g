; Select mechanical plunger switch

; P4 C2:    connected to Z endstop SIG and GND
; I0:       Switch is wired NC
; T18000:   Move to probe points at 300mm/s
; F120:     Probing Speed: 2mm/s
; H5:       Dive height: 5mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; B1:       Turn off heaters while probing

M400

; TriangleLabs Spring Steel Flexplate
;M558 P4 C2 I0 F120 H3 T18000 A10 S0.005 B1 R0.2
;G31 T4 P500 X0 Y0 Z2.18 ; Set parameters for z switch (if positive, greater value = lower nozzle. if negative, more negative = higher nozzle)

; Energetic Spring Steel Flexplate
M558 P4 C2 I0 F120 H3 T18000 A10 S0.005 B1 R0.2
G31 T4 P500 X0 Y0 Z1.87 ; Set parameters for z switch (if positive, greater value = lower nozzle. if negative, more negative = higher nozzle)

G4 P200
