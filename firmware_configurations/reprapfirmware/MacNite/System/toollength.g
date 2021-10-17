G1 Z5				; Lower Bed
G1 X190 Y350		; go above nozzle probe - this value has to be adjusted!
G1 H1 Z-10 F1200	; move quickly to X axis endstop and stop there (first pass)
G1 Z5 F30000    	; go back a few mm
G1 H1 Z-10 F300  	; move slowly to X axis endstop once more (second pass)
G92 Z-0.2			; acutation point of nozzle probe
G1 Z5