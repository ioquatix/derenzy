
use <panels.scad>;

thickness = 19;

module cabinet(dimensions) {
	cube(dimensions);
}

// https://www.tradedepot.co.nz/novo-base-cabinet-1000mm-white-woodgrain-new-7017
cabinet([588, 1000, 870]);

// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
translate([0, 1000, 0])
color("white")
cabinet([588, 800, 870]);

// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
translate([0, 1000+800, 0])
color("brown")
cabinet([588, 500, 870]);

// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
translate([588, 0, 0])
color("white")
cabinet([600, 588, 870]);

// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
translate([588+1200, 0, 0])
color("brown")
cabinet([800, 588, 870]);

// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
translate([588+1200+800, 0, 0])
color("white")
cabinet([600, 588, 870]);

// https://www.tradedepot.co.nz/kitchen-base-cab-painted-800mm-2-door
translate([588+1200+800+600, 0, 0])
color("brown")
cabinet([600, 588, 870]);

// https://www.tradedepot.co.nz/kitchen-wall-cab-painted-600mm-2-door
for (x = [5:3]) {
	translate([600*x, 0, 2400-720])
	color("white")
	cabinet([600, 318, 720]);
}

translate([0, 0, 870]) {
	translate([600, 0, 0]) panel(3200);
	
	translate([600, 0, 0]) rotate([0, 0, 90]) panel(2385);
	
	// Cooking hob
	color([0.1, 0.1, 0.1])
	translate([(600-520) / 2, 1000+(800/2)-(590/2), 0]) cube([520, 590, 72]);
	
	// Sink
	// https://www.tradedepot.co.nz/double-sink-insert-1160
	color([0.9, 0.9, 0.9])
	translate([1400, (600-510)/2, thickness*2]) {
		cube([1160, 510, 2]);
		translate([1160 - 340 - 20, 90, -200+10]) cube([340, 400, 200]);
		translate([1160 - 340*2 - 20*2, 90, -200+10]) cube([340, 400, 200]);
	}
}

// https://www.noelleeming.co.nz/shop/whiteware-kitchen-appliances/kitchen-whiteware-and-white-appliances/fridges-freezers-and-refrigerators/side-by-side-fridge-freezers/fisher-paykel-rx611dux1-610-litre-side-by-side-fridge-freezer/prod133976.html
translate([600+900, 2385 - 600, 0])
color("white")
cube([600, 600, 2230]);

// https://www.noelleeming.co.nz/shop/whiteware-kitchen-appliances/kitchen-whiteware-and-white-appliances/fridges-freezers-and-refrigerators/side-by-side-fridge-freezers/fisher-paykel-rx611dux1-610-litre-side-by-side-fridge-freezer/prod133976.html
translate([600+900+600, 2385 - 700, 0])
color("white")
cube([910, 700, 1845]);

/* translate([0, 0, 870 + 25]) {
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