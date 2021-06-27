
use <bolts.scad>;
use <zcube.scad>;

// 8
// 12.5

//rcube([20, 20, 8], 5);

height = 14;

difference() {
	rcube([20, 20, height], 5);
	//hole(6, height);
}
