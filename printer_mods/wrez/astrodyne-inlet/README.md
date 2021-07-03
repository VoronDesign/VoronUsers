# Astrodyne IEC 320 C14 Power Inlet Housing for V0.1

This mod is a replacement housing for the stock v0.1 power inlet, replacing the [Adam
Tech
IEC-GS-1-100](https://www.digikey.com/en/products/detail/adam-tech/IEC-GS-1-100/9831135)
(which has been on back-order at Digikey for quite a while at the time of
this writing) with an
[Astrodyne/TDI
082S](https://www.mouser.com/ProductDetail/Astrodyne-TDI/082S0150000?qs=eP2BKZSCXI7jG836kH3rhw%3D%3D).

-------

**WARNING**: I just discovered that the 082SM ("M" for "medical") has small tabs on both sides of
the inlet (**not** shown in the datasheet). These tabs physically prevent normal C13 power
cords (what the Brits would call "bog standard kettle cords") from fitting into the
receptacle. I _think_ but am not yet sure that the 082S (general purpose model)
does not have the tabs (I think they are to prevent non-certified
cords from being used accidentally). I've ordered an 082S to verify and will
update this README once I've confirmed.

Also, as should be obvious: You will need to acquire and insert 250VAC buss
fuses (by pulling out the little drawer &mdash; there is a slot for the active
fuse, plus room for a spare in the front).

## View of Tab in 082SM version

![082S side tab](./images/082SM-tabs.jpg)

-------

## Assembled view

![Assembled housing in place](./images/in-situ.jpg)

## Printed part render

![Part render](./images/power-inlet-astrodyne.png)

## Unassembled view

![Assembly](./images/disassembled.jpg)

## Front view

![Front view](./images/front-view.jpg)

## Rear view

![Rear view](./images/rear-view.jpg)

## Printing notes

Slice and print with standard Voron settings (ABS, 40% infill, 0.4mm line width,
0.2mm layer height, 5 top/bottom layers, 4 walls) but there isn't a lot of
surface area in contact with the bed so you may struggle with warping unless
your first layer is dialed in perfectly (perhaps with a little extra squish).
There is no shame in printing this part with a brim (I've not added any fillets
to the front edge for precisely this reason).

The [STL](./STLs/astrodyne-inlet.stl) should import into your slicer with the
correct orientation. If not, ensure that the front (where the inlet is inserted)
is face down on the bed.

## Design and assembly notes

This design should be a simple drop-in replacement of the stock parts, but it's
secured at just two points: the heat-set insert in the side and the screw
through the ear on the top. 

I've used one fewer screw than the original part, but two screws on
orthogonal faces are more than rigid enough in practice.

If you've already inserted both M3 nuts, I'd recommend simply sliding one as far
to the left as possible (as you face the back of the printer) and securing it
with an M3 x 6mm screw. There will still be room for the other nut, and it beats
having to disassemble the frame (or leaving an extra nut rattling around).

The printed housing has a slightly larger panel cutout than called for in the
[Astrodyne 082S/082SM
datasheet](https://www.mouser.com/ProductDetail/astrodyne-tdi/082sm0150000/?qs=eP2BKZSCXI4KQZVxn1eqpw%3D%3D).
I just guesstimated the amount of offsets to account for part shrinkage and
printing tolerances, but my first print of the part worked perfectly: the
power-inlet snapped into place with a quite satisfying click, and felt quite
secure.

## Disassembly

No.

[Just kidding. It _might_ be possible to sneak a couple of butter knives or
narrow putty knives down the sides to release the clips, but I ended up just
sawing off the test print I used to check the fit.]

## Files

- [STL](./STLs/astrodyne-inlet.stl)
- [STEP file](./CAD/power-inlet-astrodyne.step)
- [Fusion 360 design](./CAD/power-inlet-astrodyne.f3d)
