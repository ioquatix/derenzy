
use <zcube.scad>;

height = 700;

module walls() {
	translate([-10/2, 0, 0])
	zcube([10, 660, 2400]);
	
	translate([600/2,660/2 + 10/2, 0])
	zcube([600, 10, 2400]);
	
	translate([0, -660/2, 0])
	rotate([0, 0, 47])
	translate([-10/2, -625/2, 0])
	zcube([10, 625, 2400]);
}

module pipes() {
	// 340 from corner 575 from floor
	translate([0, 340 - 660/2, 575])
	rotate([0, 90, 0])
	cylinder(d=40, h=20);
	
	// 290 390 655
	translate([0, 290 - 660/2, 655])
	rotate([0, 90, 0])
	cylinder(d=12, h=20);
	
	translate([0, 390 - 660/2, 655])
	rotate([0, 90, 0])
	cylinder(d=12, h=20);
	
	translate([600/2, 0, height+30])
	scale([1, 6/4, 1])
	cylinder(d1=200, d2=400, h=200);
}

module benchtop() {
	hull() {
		translate([600/2, 0, height])
		zcube([600, 660, 20]);
		
		translate([0, -660/2, 0])
		rotate([0, 0, 47])
		translate([210/2, -625/2, height])
		zcube([210, 625, 20]);
	}
}

module bench() {
	benchtop();
	
	translate([20/2, 0, height-180])
	zcube([20, 660, 180]);
	
	translate([600/2, 660/2 + -20/2, height-180])
	zcube([600, 20, 180]);
	
	translate([0, -660/2, 0])
	rotate([0, 0, 47])
	translate([20/2, -625/2, height-180])
	zcube([20, 620, 180]);
	
	/* render()
	intersection() {
		translate([0, 0, -(180+20)])
		benchtop();
		
		translate([300/2 + 300, 0, 0])
		zcube([300, 2000, 1000]);
	} */
}

color("pink")
walls();

color("white")
pipes();

color("brown")
bench();
