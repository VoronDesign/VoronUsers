# Voron 0.2 Waveshare 2.8 DSI Display 
![render](Images/WaveshareSkirtMount.png) 

##

### BOM
[Waveshare Display](https://www.waveshare.com/2.8inch-dsi-lcd.htm)

[DSI Cable](https://www.amazon.com/A1-FFCs-Black-Raspberry-Camera/dp/B07J57LQQS/ref=sr_1_3?)

This display mount attaches using stock hardware on the V0.2 as well as the hardware that is included with the display

 ---



| ![DK_V02](Images/2.png) | 
|:--:| 
| *Thanks DragonKitty! for testing the display mount* |

---

# Waveshare 2.8 Automatic Installation 

This install.sh will install the drivers as well as prompt you to install klipperscreen and then prompt you to reboot your pi
```
cd ~
git clone https://github.com/hartk1213/Waveshare2.8_Installation
./Waveshare2.8_Installation/install.sh
```


# Waveshare 2.8 Manual Installation with Klipperscreen 

## Step 0
Remove any previous installations of the Waveshare driver repos
```
rm -r -f Waveshare*
```

## Step 1
Clone Waveshare-DSI-LCD driver repo

command
```
git clone https://github.com/waveshare/Waveshare-DSI-LCD && cd Waveshare-DSI-LCD
```


terminal output
```console
pi@mainsailos:~ $ git clone https://github.com/waveshare/Waveshare-DSI-LCD && cd Waveshare-DSI-LCD
Cloning into 'Waveshare-DSI-LCD'...
remote: Enumerating objects: 454, done.
remote: Counting objects: 100% (454/454), done.
remote: Compressing objects: 100% (310/310), done.
remote: Total 454 (delta 241), reused 336 (delta 127), pack-reused 0
Receiving objects: 100% (454/454), 420.95 KiB | 2.21 MiB/s, done.
Resolving deltas: 100% (241/241), done.
pi@mainsailos:~/Waveshare-DSI-LCD $
```

## Step 2
In the terminal find the kernel version and whether your are on a 32bit or 64bit system and cd to the corresponding file directory
in this example the version is 6.1.21 and its a 64bit system 

command
```
uname -m -r
```

teminal output
```console
pi@mainsailos:~/Waveshare-DSI-LCD $ uname -m -r
6.1.21-v8+ aarch64
```

## Step 3
based on the result of the previous command, you want to step into that directory that corresponds with the version on your system. in this example the version is `6.1.21`
if you list out the directories using the `ls` command you can see if your version is there 

command
```
cd 6.1.21/64
``` 

terminal output
```console
pi@mainsailos:~/Waveshare-DSI-LCD $ ls
5.10.103  5.15.84  6.1.63     readme.txt
5.10.92   6.1.0    6.1.73
5.15.61   6.1.21   6.6.20
5.15.76   6.1.58   Backlight
pi@mainsailos:~/Waveshare-DSI-LCD $ cd 6.1.21/64
pi@mainsailos:~/Waveshare-DSI-LCD/6.1.21/64 $
```

## Step 4
once you have entered that directory, it is time to install those drivers. There is a script in that folder for you to run which is done with this command , you may need to enter your password here as well 

command 
```
sudo bash ./WS_xinchDSI_MAIN.sh 28 I2C0
```

terminal output 
```console
pi@mainsailos:~/Waveshare-DSI-LCD/6.1.21/64 $ sudo bash ./WS_xinchDSI_MAIN.sh 28 I2C0
[sudo] password for pi:
SCREEN_type=0,I2C_bus=10
The raspberry PI hardware platform is pi3
Driver Start Settings
It already exists and does not need to be added
It already exists and does not need to be added
Driver end Settings
pi@mainsailos:~/Waveshare-DSI-LCD/6.1.21/64 $
```

## Step 5
When the driver installation is complete and no error is prompted, Now you need to add this file simply by running this command 
the first line is creating the directory if it doesnt exsit yet , the 2nd is downloading the `90-monitor.conf` file to that directory 

command
```
mkdir /usr/share/X11/xorg.conf.d/
```
```
sudo wget -P /usr/share/X11/xorg.conf.d/ https://raw.githubusercontent.com/hartk1213/MISC/main/Voron%20Mods/Voron%200/0.2/2_8WaveshareDisplay/Software/90-monitor.conf
```

terminal output
```console
pi@mainsailos:~/Waveshare-DSI-LCD/6.1.21/64 $ mkdir /usr/share/X11/xorg.conf.d/
mkdir: cannot create directory ‘/usr/share/X11/xorg.conf.d/’: File exists
pi@mainsailos:~/Waveshare-DSI-LCD/6.1.21/64 $ sudo wget -P ~/usr/share/X11/xorg.conf.d/ https://raw.githubusercontent.com/hartk1213/MISC/main/Voron%20Mods/Voron%200/0.2/2_8WaveshareDisplay/Software/90-monitor.conf
--2024-05-15 06:25:16--  https://raw.githubusercontent.com/hartk1213/MISC/main/Voron%20Mods/Voron%200/0.2/2_8WaveshareDisplay/Software/90-monitor.conf
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.108.133, 185.199.109.133, 185.199.110.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 404 [text/plain]
Saving to: ‘/usr/share/X11/xorg.conf.d/90-monitor.conf’

90-monitor.conf   100%[========================================================================================================================================>]     404  --.-KB/s    in 0.002s

2024-05-15 06:25:16 (191 KB/s) - ‘/usr/share/X11/xorg.conf.d/90-monitor.conf’ saved [404/404]

pi@mainsailos:~/Waveshare-DSI-LCD/6.1.21/64 $
```

## Step 6
After that file has been successfully downloaded now you need to edit the /boot/firmware/config.txt file to tell the pi which orientation to use the display in (i.e portrait, landscape etc..). 


command 
```
sudo nano /boot/firmware/config.txt
```
To do this scroll all the way to the bottom of the file and replace

`dtoverlay=WS_xinchDSI_Touch,I2C_bus=10,invertedy,swappedxy`

with

`dtoverlay=WS_xinchDSI_Touch,I2C_bus=10,invertedy,invertedx` 

and add the following lines and save the file 

 ```console
dtoverlay=vc4-kms-v3d
dtoverlay=vc4-kms-dsi-waveshare-panel,2_8_inch
```

## Step 7
Now it is time to reboot the pi 

command 
```console
sudo reboot
```

once you have rebooted the display should look something like this when the pi is booting up, it will be rotated in portrait mode but klipper screen once installed will be the correct orientation 
![image](https://github.com/hartk1213/MISC/assets/12398294/6c4a4af5-278b-4a70-a633-c830783e51cd)

Now you should just be able to install klipper screen as usual following the instructions [here](https://klipperscreen.readthedocs.io/en/latest/Installation/)



