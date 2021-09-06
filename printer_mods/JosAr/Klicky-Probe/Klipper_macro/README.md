Voron V2.4:
If using the probe instead of a physical Z endstop please remember to comment out the homing override from your printer.cfg and use the klicky-probe.cfg one.
For using the Klicky probe as a probe only it is not necessary to remove anything from your existent configuration, it is better to comment the homing override on klicky-probe.cfg

Voron V1.8:
Due to the fact that the probe may hit the bed on the v1.8 when going to the physical Z endstop, please use the homing override included in klicky-probe.cfg instead of the one that you currently have in your printer.cfg .

You may have a faster PRINT_START if you use Attach_Probe_Lock at the beggining and Dock_Probe_Unlock at the end.
