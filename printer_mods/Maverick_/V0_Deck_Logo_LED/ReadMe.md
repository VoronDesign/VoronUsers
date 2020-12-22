# V0 Illuminated Deck Logo


A lower deck panel addition to the V0, designed to accomodate a Neopixel Ring.


## Print
* Deck_Logo_Insert_Transparent 
   * Printed with a clear filament to allow for the glow that is represented in the pictures.
   * Recommend >40% infill to hide the individual LEDs.

* Deck_Logo 
  * This is meant to be printed with no top or bottom layers, leaving the infill pattern exposed for light to shine through.  
  * Perimeters (vertical): 2 or 3 
  * Solid Layers (horizontal): 0 Top and 0 Bottom
  * Infill Pattern: I recommend a pattern like "Honeycomb", "Stars" or similar. The main goal is to be able to see through the print.
  * Infill Density: This will vary depending on your infill pattern and personal preference. Play around with it to get the look that you want. 


## Assemble and Install
The parts are pressed and snapped together then attached to the lower deck panel via VHB tape.


## LEDs
I used two Neopixel Rings (a 24 and a 12) in my build, but only one is required. VHB tape was also used to secure these to the deck panel. I then drilled a hole through the deck to accomodate the wires necessary to run to an Arduino Nano as a controller. 


## Controller
The lights can be controlled with an Arduino Nano, Klipper, or an Octoprint Plugin. 


![Deck Logo](Images/Deck_Logo.jpg)
