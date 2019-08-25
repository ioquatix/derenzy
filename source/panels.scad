
$t = 19;

function odd(x) = (x % 2) == 1;

module plank(length, width = 200, thickness = $t) {
	echo("plank", [width, length, thickness]);
	cube([width, length, thickness]);
}

module panel(length, width = 600, thickness = $t, plank_width = 200, backing_width = 40) {
	count = floor(width / plank_width);
	
	for (x = [0:1:count-1]) {
		color(odd(x) ? [0.8, 0.4, 0.1] : [0.7, 0.4, 0.1])
		translate([x * plank_width, 0, 0]) plank(length, plank_width, thickness);
	}
	
	color([0.8, 0.45, 0.1])
	translate([0, 0, -thickness]) {
		plank(length, backing_width);
		translate([width - backing_width, 0, 0]) plank(length, backing_width);
	}
	
	color([0.8, 0.35, 0.3])
	translate([backing_width, length, -thickness]) rotate([0, 0, -90]) {
		plank(width - backing_width*2, backing_width);
		translate([length-backing_width, 0, 0]) plank(width - backing_width*2, backing_width);
	}
}
