## To compile for klipper firmware:
1) Connect to your printer via SSH
2) Run `cd ~/klipper` to change into the klipper directory
3) Run `make menufconfig` to enter the klipper firmware settings
4) Change setting to match below:
![image test](Image/MKS%20Monster8%20setting.png?raw=true)
5) Exit and save with `Q`
6) Run `make` to compile the firmware
7) Copy file `out/klipper.bin` to the SD card and rename to `firmware.bin`
   - If you are running Mainsail or Fluidd you can run the following command to copy the firmware file to the config directory allowing you to download it from the web interface:
   - `cp out/klipper.bin ../klipper_config/firmware.bin`
9) Insert SD card into Monster8 and reset the board
10) Verify the firmware flash by running `ls /dev/serial/by-id/*` making sure you have the USB cable plugged in between the Monster8 and the Pi
