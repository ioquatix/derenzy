
use <panels.scad>;

thickness = 19;

panel(2700);

rotate([0, 0, -90]) panel(1000, width=1000);
translate([0, -700, -thickness]) rotate([0, 90, -90]) panel(1000, width=1000);

translate([0, 600 + 2700, 0]) rotate([0, 0, -90]) panel(2385);

// Vertical walls

translate([thickness, -1000, thickness]) rotate([0, -90, 0]) plank(1000 + 2700 + 600, 200);

translate([2385, 2700, thickness]) rotate([0, -90, 0]) plank(600, 200);

translate([thickness, 2700+600-thickness, thickness]) rotate([0, -90, -90]) plank(2385 - thickness*2, 200);

// Cooking hob

color([0.1, 0.1, 0.1])
translate([1000, 2700 - (520-600) / 2, -40]) cube([590, 520, 72]);

// Sink

color([0.9, 0.9, 0.9])
translate([-(510-600) / 2, 1200, -40]) 
cube([510, 780, 72]);
