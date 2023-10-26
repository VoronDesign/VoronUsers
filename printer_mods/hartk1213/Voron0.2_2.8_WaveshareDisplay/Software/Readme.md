## Old Waveshare-DSI-LCD 2.8 Drivers

## Step 1: 
unzip and copy the Waveshare-DSI-LCD.zip folder to your /home/pi directory  

## Step 2: 

run the following in the terminal to view the kernal version and cd to the corresponding file directory

        uname -a

5.15.32

        cd 5.15.32
5.15.56

        cd 5.15.56
5.10.103

        cd 5.10.103

## Step 3: 

Please check the bits of your system, enter the 32 directory for 32-bit systems, and enter the 64 directory for 64-bit systems

32

        cd 32
64

        cd 64

## Step 4:

Enter your corresponding model command to install the driver
2.8inch DSI LCD 480×640：

        sudo bash ./WS_xinchDSI_MAIN.sh 2_8INCH I2C0


## Step 5: 
Wait for a few seconds, when the driver installation is complete and no error is prompted, restart and load the DSI driver and it can be used normally

        sudo reboot
