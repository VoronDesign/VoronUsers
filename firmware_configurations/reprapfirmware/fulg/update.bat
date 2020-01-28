@rem Update the URL below to match the name you've set at M550 in sys/config.g!
@rem The .local suffix is automatically added to that name.

wget --ftp-user=admin -r -nH ftp://voronv2015.local/macros
wget --ftp-user=admin -r -nH ftp://voronv2015.local/sys

del .\sys\*.bak
del .\sys\*.bin
del .\sys\*.old
del .\sys\heightmap.csv
del .\sys\dwc2settings.json
del .\sys\resurrect.g