
use <zcube.scad>;
use <bolts.scad>;

difference() {
	rcube([20, 80, 12], 5);
	zcube([20, 60, 8]);
	
	reflect([0, 1, 0])
	translate([0, 70/2, 0])
	countersunk_hole(4, 12);
}
