include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

$fn = $preview ? 64 : 256;

render = ""; // [hinge pin, fixed back part, movable front part, movable bottom part]
mirrored = false;

module __Customizer_Limit__ () {}

if (render == "hinge pin") {
	hinge_pin();
} else if (render == "fixed back part") {
	if (mirrored) {	xflip()	fixed_back_part();
	} else { fixed_back_part();	}
} else if (render == "movable front part") {
	if (mirrored) {	xflip()	movable_front_part();
	} else { movable_front_part(); }
} else if (render == "movable bottom part") {
	movable_bottom_part();
}

module hinge_pin () {
	snap_pin("small");
}

thickness = 5;

module fixed_back_part () {
	diff()
	cuboid([22 - 4, 5.285, 6]) {
		position(BACK+TOP)
		left(3+1)
		cuboid(anchor = FRONT+TOP, [8, 0.6, 3], chamfer = 0.6, edges = [BACK+TOP, BACK+BOT]);

		foo = 8.725 - $parent_size.y;

		position(TOP)
		prismoid(anchor = BOT, size1 = point2d($parent_size), size2 = [$parent_size.x, foo], h = 3.2, shift = [0, ($parent_size.y - foo) / 2]);

		tag("remove")
		position(RIGHT+FRONT)
		move([-3, 0, 1.5])
		ycyl(anchor = RIGHT+FRONT, l = 2.285, d = 6) {
			position(BACK)
			ycyl(anchor = FRONT, l = 3, d = 3.5);
		}

		tag("remove")
		position(LEFT+BACK+BOT)
		move([0, -1.5, thickness / 2])
		snap_pin_socket("small", anchor = BOT+BACK, orient = RIGHT, fixed = false);
	}
}

module movable_front_part () {
	extra_front = 3;

	diff()
	cuboid([12.4, 44.75 + extra_front, thickness], rounding = thickness / 2, edges = "X") {
		tag("remove")
		fwd(5.8 - extra_front / 2)
		yflip_copy(12.5)
		position(BOT)
		cyl(anchor = BOT, d = 4, l = thickness - 4) {
			tag("remove")
			position(BOT)
			cyl(anchor = BOT, d = 2.2, l = thickness + $parent_size.z);
		}

		tag("remove")
		position(RIGHT+BACK+BOT)
		move([0, -1.5, 0.5])
		snap_pin_socket("small", anchor = BOT+BACK+LEFT, orient = LEFT, fixed = false);

		tag("remove")
		position(RIGHT+FRONT+BOT)
		move([0, 1.5, 0.5])
		snap_pin_socket("small", anchor = BOT+FRONT+LEFT, orient = LEFT, fixed = false);

		tag("remove")
		position(TOP)
		fwd(5.8 - extra_front / 2)
		cuboid(anchor = TOP, [$parent_size.x, 12.5 * 3/2, $parent_size.z / 2], rounding = $parent_size.z / 2, edges = [BOT+FRONT, BOT+BACK]);
	}
}

module movable_bottom_part () {
	diff()
	cuboid([58.5, thickness, 34+2], rounding = thickness / 2, edges = [TOP+BACK, TOP+FRONT]) {
		tag("remove")
		xflip_copy()
		position(RIGHT+TOP)
		down(0.5)
		snap_pin_socket("small", anchor = BOT+RIGHT, orient = LEFT, fixed = false);

		extra_thickness = 1;

		position(BOT)
		cuboid(anchor = BOT, [$parent_size.x, 6, 5 + extra_thickness], rounding = extra_thickness, edges = [TOP+FRONT, TOP+BACK]) {
			tag("remove")
			position(BOT)
			cuboid(anchor = BOT, [$parent_size.x, $parent_size.y - 2, $parent_size.z - extra_thickness], rounding = ($parent_size.y - 2) / 2, edges = [TOP+FRONT, TOP+BACK]);

			position(BOT+BACK)
			cuboid(anchor = TOP+BACK, [$parent_size.x, extra_thickness, 5]);
		}
	}
}
