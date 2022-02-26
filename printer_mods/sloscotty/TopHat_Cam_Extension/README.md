# NoNutz™ TopHat Cam Extension for V0/0.1

![](Images/TopHat_Cam_Extension_Installed.jpg)

 This modification provides a tophat extension that adds 7mm in height to help clear the umbilical.  It includes a fold-up webcam below the tophat.
 It does not require replacing any parts on the tophat itself and can be considered a "drop-in" modification. No nuts required!
 
![](Images/Tophat_Cam_Extension.jpg)
 
 The camera housing is designed around the [Arducam USB Camera Module with 8MP Sony IMX219](https://www.uctronics.com/download/Amazon/B0196.pdf)
 
## BOM
 - (1) [Arducam USB Camera Module](https://www.arducam.com/product/b0196arducam-8mp-1080p-usb-camera-module-1-4-cmos-imx219-mini-uvc-usb2-0-webcam-board-with-1-64ft-0-5m-usb-cable-for-windows-linux-android-and-mac-os/) (Also available on Amazon)
 - (1) m3x5x4 heat-set insert
 - (2) m3x10 BHCS
 - (1) m3x6x0.5 shim
 - (6) m2x10 self-tapping screws
 - VHB tape

# Directions
 
## A. Print the parts

 The parts for this mod should be printed with standard Voron quality settings.  It is assumed that they will be printed
 on a Voron V0 or V0.1.  All parts in the top-level STLs folder can be printed on the 120x120 bed.  The _Spacer_ parts have been split from the CAD
 in order to accomodate this. They will still need to be rotated 45 degrees to fit.  (It is suggested to set the infill angle to 90 degrees to print the rotated parts.)
 
 If you have a larger printer, the un-split parts are available in the STLs/Optional folder.
 
 **NoCam Option**  
 If you don't care about the camera and just want the spacers, the right spacer parts (both split/un-split) without the camera stuff are also in the Optional folder.
 
## B.  Prepare the camera arm and attach to right spacer.
 
 ![](Images/Arm_Assembly.jpg)
 
## C.  Install the USB cable in the cable path
 
 ![](Images/USB_Cable_Path.jpg)
 
 Note: Place the end of the cable as far forward as possible.  You might want to cut away the heatshrink on the end to help seat  it better.
 Notice the position of the cable in the curved portion of the path - this is intended to provide some strain-relief when the camera
 arm is folded down.
 
 ![](Images/Insert_USBcable.jpg)

## D.  Install the arm cover and ball mount.
 
 ![](Images/Arm_Cover_Assembly.jpg)

## E.  Install the right and left spacers.

 Keeping the cable in the tunnel, flip the right spacer(s) and arm assembly over and press down on the top extrusion until
 the tabs "click" into place.  Install the left spacer(s) similarly.
 
## F.  Install the front and rear spacers.

 Place the tophat in place on the left/right spacers and intall the front/rear spacers.  It will help to open the door and remove the back panel for this step.
 Hint for split spacers. Apply VHB across seam before attaching to panel. (Be careful that each panel rests firmly on the shelf of the spacer.)
 
 ![](Images/VHB_FrontRear_Spacers.jpg)
 
## G.  Prepare the Arducam and assemble the camera case.

 Cut away the outer portion of the PCB (as close to the inner PCB as possible).
 
 ![](Images/Prepare_Arducam.jpg)
 
 ![](Images/Camera_Assembly.jpg)
 
## H.  Install camera assembly and route USB cable through back panel.

 Plug the USB cable into the camera and attach camera base to ball mount. (Note: If the base seems too loose, you may want to scale up the ball mount a bit and reprint.
 A little loose is OK, because the camera will probably be tilted all the way down for best image position.)
 
 When routing the USB cable through the back panel, take care to keep the cable from interfering with the filament spool.  You may need to drill a couple of holes
 for a zip-tie or two to hold the cable against the panel.  Many ways to do this. I cut a slit on the far side of my panel as shown below.
 
 ![](Images/Back_Panel.jpg)
 
## Notes
 
**Camera Configuration**  
The default configuration ("auto") for this webcam didn't work for me.  I edited ~/klipper_config/webcam.txt as follows (YMMV):

	# Defaults to auto
	#
	camera="usb"

	### Additional options to supply to MJPG Streamer for the USB camera
	# Defaults to a resolution of 640x480 px and a framerate of 10 fps
	#
	camera_usb_options="-r 640x480 -f 10"

Even though this camera is capable of higher resolutions, they don't show enough of the bed.

**Fold-up the camera**  
In use:  When opening the door with the camera down, the curved portion of the arm cover will cause the arm to automatically start folding up.
***However, it will not fold up completely out of the way without manual assistance.***  This "feature" is meant to provide a visual cue to prevent breakage.

**Spacers too short/long?**  
The provided one-piece left/right spacers in the Optional folder have been scaled to 100.4% (which fit my V0.1 fine).
If your prints come out differently, I suggest re-exporting the spacers from the CAD and scaling them appropriately.
(The split spacers are not scaled and should fit as is.)

## More Photos

![](Images/THCE_Top.jpg)

![](Images/THCE_without_TH.jpg)

![](Images/Cam_View.jpg)
