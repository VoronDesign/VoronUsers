; Select inductive probe, OMRON TL-Q5MC2-Z

; P4:       connected to Zmin SIG and GND
; I0:       P4 expects NC, TL-Q5MC2-Z is also NC
; T18000:   Move to probe points at 300mm/s
; F1200:    Probing Speed: 20mm/s
; H5:       Dive height: 5mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; B1:       Turn off heaters while probing

M400
M558 P8 I0 T18000 F1200 H5 A5 S0.01 B0 R0.2
G31 T8 P500 X0 Y25 Z3.45 ; inductive probe offset, not critical, only used for coarse homing
G4 P200
