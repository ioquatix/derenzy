
use <panels.scad>;

module walls() {
	render() difference() {
		translate([-100, -100, -100]) cube([7000+200, 2380+200, 2400+100]);
		
		// Main room:
		cube([7100, 2380, 2400]);
		
		// Living room:
		translate([4000, 0, 0]) cube([4000, 4000, 2400]);
		
		// Door:
		translate([600, 0, 0]) cube([900, 6000, 2400]);
		
		// Window:
		translate([-100, -100, 1090])
		cube([1800+100, 100+1070, 880]);
		
		// Sump:
		translate([1590, 0, -150])
		cube([80, 250, 200]);
	}
	
	color("black") {
		// Pipes:
		translate([1590, 0, 400])
		cube([20, 100, 20]);
		
		translate([1590+100, 0, 400])
		cube([20, 100, 20]);
	}
	
	color("white") {
		translate([1520-30, 0, 500])
		cube([60, 10, 100]);
		
		translate([2025-30, 0, 150])
		cube([60, 10, 100]);
	}
}

walls();

module cabinet(dimensions, door = 600, thickness = 18) {
	render()
	difference() {
		cube(dimensions);
		
		translate([thickness, 0, 0])
		cube([
			dimensions[0]-thickness*2,
			dimensions[1],
			dimensions[2]-thickness,
		]);
	}
	
	translate([0, dimensions[1], 0])
	cube([
		dimensions[0],
		door,
		thickness,
	]);
}

module cabinets(thickness = 19) {
	rotate([0, 0, -90]) {
		// https://www.tradedepot.co.nz/novo-base-cabinet-1000mm-white-woodgrain-new-7017
		translate([-1000, 0, 0])
		color("brown")
		cabinet([1000, 588, 870], door=0);
	
		// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
		translate([-1000-800, 0, 0])
		color("white")
		cabinet([800, 588, 870], door=400);
		
		// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
		translate([-1000-800-500, 0])
		color("brown")
		cabinet([500, 588, 870], door=0);
	}
	
	// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
	translate([588, 0, 0])
	color("white")
	cabinet([400, 588, 870], door=400);
	
	// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
	translate([588+1000, 0, 0])
	color("brown")
	cabinet([800, 588, 870]);
	
	// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
	translate([588+1000+800, 0, 0])
	color("white")
	cabinet([600, 588, 870]);
	
	// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
	translate([588+1000+800+600, 0, 0])
	color("brown")
	cabinet([600, 588, 870]);
	
	// https://www.tradedepot.co.nz/kitchen-wall-cab-painted-600mm-2-door
	/* for (x = [5:3]) {
		translate([600*x, 0, 2400-720])
		color("white")
		cabinet([600, 318, 720]);
	} */
	
	translate([0, 0, 870]) {
		// Measured length: 3590
		translate([600, 0, 0]) panel(3590 - 600);
		
		translate([600, 0, 0]) rotate([0, 0, 90]) panel(2380);
		
		// Cooking hob
		color([0.1, 0.1, 0.1])
		translate([(600-520) / 2, 1000+(800/2)-(590/2), 0]) cube([520, 590, 72]);
		
		// Sink
		// https://www.tradedepot.co.nz/double-sink-insert-1160
		color([0.9, 0.9, 0.9])
		translate([1200, (600-510)/2, thickness*2]) {
			cube([1160, 510, 2]);
			translate([1160 - 340 - 20, 90, -200+10]) cube([340, 400, 200]);
			translate([1160 - 340*2 - 20*2, 90, -200+10]) cube([340, 400, 200]);
		}
	}
	
	// 
	translate([600+900, 2385 - 600, 0])
	color("white")
	cube([600, 600, 2230]);
	
	// https://www.harveynorman.co.nz/whiteware/refrigeration/french-door/westinghouse-605l-french-door-fridge-freezer.html?utm_source=pricespy&utm_medium=referral&utm_campaign=pricespy
	translate([600+900+600, 2385 - 781, 0])
	color("blue")
	cube([900, 781, 1725]);
	
	translate([600+900+600, 2385 - 600, 2230 - 400])
	color("green")
	cabinet([900, 318, 400]);
	
	translate([600+900+600+900, 2385 - 600, 0])
	color("white")
	cube([600, 600, 2230]);
}

cabinets();

/*
translate([0, 0, 870 + 25]) {
	rotate()
	panel(2700);

	rotate([0, 0, -90]) panel(1000, width=1000);
	translate([0, -700, -thickness]) rotate([0, 90, -90]) panel(1000, width=1000);

	translate([0, 600 + 2700, 0]) rotate([0, 0, -90]) panel(2385);

	// Vertical walls

	color([0.8, 0.4, 0.1]) {
		translate([thickness, -1000, thickness]) rotate([0, -90, 0]) plank(1000 + 2700 + 600, 200);
		
		translate([2385, 2700, thickness]) rotate([0, -90, 0]) plank(600, 200);
		
		translate([thickness, 2700+600-thickness, thickness]) rotate([0, -90, -90]) plank(2385 - thickness*2, 200);
	}


	color([0.1, 0.1, 0.1])
	translate([1000, 2700 - (520-600) / 2, -40]) cube([590, 520, 72]);


} */