# <B>HEPA Filter Exhaust for Voron 1.x/2.x</B>

I've designed a new exhaust which uses a 120x120x25 mm fan and HEPA filters (compatible with MELEDEN, RIGOGLIOSO, JINPUS and LTLKY air purifiers). This is a direct replacement for the stock air filter systems.

## <B>Bill of Materials</B>

###New Parts

- 1x 120x120x25mm fan such as[Noctua NF-F12 iPPC-2000](https://www.amazon.com/gp/product/B00KFCQT6M/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1). (note that I have an adjustable voltage on my control board, but make sure you buy the correct voltage for your system)
- HEPA Filter such as [Nispira True HEPA Filter Replacement with Activated Carbon](https://www.amazon.com/gp/product/B0921DZLPK/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)

###Parts from Voron BOM

Parts here are already listed in the Voron 2.x BOM:

- 7x M3 heat set inserts.
- 4x M3x30mm socket cap bolts.
- 3x M3x8mm socket cap bolt.
- 2x M3 roll in spring loaded T-nuts.
- 4x 6x3mm neodymium magnets.
- 1x 4mm bowden coupler.
- 1x 2 pin JST terminal.

###Printed Parts:

These can be found in the STL subdirectory.

- 1x exhaust-chamber-mount.stl (flip to match which side of your 120mm fan your cable comes out of for neatest appearance).
- 1x exhaust-hepa-filter-housing.stl
- 1x exhaust-lid.stl

Print the parts with 4 perimeters, and at least 22% infill.

## <B>Assembly Instructions</B>

1. Insert threaded heat set inserts into exhaust chamber mount (2 in back, 4 in front.)
2. Insert threaded heat set insert into exhaust HEPA filter housing.
3. Route fan cable through the hole and through the cable management groove at the back of the exhaust chamber mount. Cut the fan cables so that you have just enough length to solder them to the JST terminal.
4. Solder on the 2 pin JST terminal to the end of the fan wirings. 
5. Super glue the JST terminal to the bottom of the exhaust chamber mount. Make sure the slot is nice and cleaned up so that the terminal will set flush with the back. 
6. Super glue neodymium magnets to the HEPA filter housing and the lid- be careful to insure the polarity is correct.
7. Slide the M3x30mm bolts through the HEPA filter housing, through the fan, and into the 4 heat set inserts at the front of the exhaust chamber mount. 
8. Screw the M3x8mm bolt through the exhaust lid, and into the heat set insert on the HEPA filter housing. 
9. Remove the fins from the HEPA filter cartridge. I use a rotary tool (Dremel) to do this, but you can also use a box cutter or similar.
10. Insert the HEPA filter cartridge into the HEPA filter housing, and pivot the lid so that it orients with the magnets and locks closed.
