
use <zcube.scad>;
use <bolts.scad>;

difference() {
	cube([16, 32, 18]);
	cube([16, 16, 14]);
	
	translate([8, 24, 0])
	countersunk_hole(4, 18);
}
