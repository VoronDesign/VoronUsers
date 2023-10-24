; give one last chance to cancel...
M291 P"Is the bed heated and printer heat soaked?" S3

; ignore current heightmap
M561

; Level the gantry while everything is hot
G32

; Home Z to switch to the induction probe and establish Z=0 for it
G28 Z

; Probe a new bed mesh!
G29

; Restore Z=0 to the proper reference
M98 P"/macros/print_scripts/do_z_switch_probe.g"