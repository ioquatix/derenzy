
use <wood.scad>;

module shelf(depth=600) {
	translate([0, -depth, 0])
	panel(980, depth);
}

module support() {
	translate([0, -20])
	rotate([0, 90, 0])
	beam(980, 40, 20);
	
	rotate([0, 90, -90])
	beam(680, 40, 20);
	
	translate([980 - 20, 0, 0])
	rotate([0, 90, -90])
	beam(600, 40, 20);
}

translate([0, 0, -20]) shelf();
	
translate([0, 0, 500]) {
	support();
	rotate([0, 0, 0]) shelf(300);
}

translate([0, 0, 500+300]) {
	support();
	rotate([0, 0, 0]) shelf(200);
}

translate([0, 0, 500+300+200]) {
	support();
	shelf(200);
}
