
use <zcube.scad>;

translate([0, 50/2, 0])
zcube([100, 50, 300]);

reflect() {
	translate([100/2 + 25/2, 180/2, 0]) zcube([25, 180, 25*6]);
	translate([100/2 + 25/2 + 25+6, 180 - 25, 0]) zcube([25+12, 25*2, 25*2]);
}

color("brown")
translate([0, 160, 40])
cube([230, 10, 10], true);

color("white")
union() {
	translate([0, 200, 0])
	cylinder(d=100, h=40);

	hull() {
		translate([0, 200, 10])
		cylinder(d=100, h=10);
		
		translate([0, 100, 40])
		cylinder(d=100, h=100);
	}
}