
use <zcube.scad>;
use <bolts.scad>;

difference() {
	zcube([31, 20, 2]);
	
	reflect()
	translate([8, 20/2-7, 0]) {
		hole(3);
	}
}