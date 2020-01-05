wget --ftp-user=admin -r -nH ftp://voronv2015.local/macros
wget --ftp-user=admin -r -nH ftp://voronv2015.local/sys

del .\sys\*.bak
del .\sys\*.bin
del .\sys\*.old
del .\sys\heightmap.csv
del .\sys\dwc2settings.json
del .\sys\resurrect.g