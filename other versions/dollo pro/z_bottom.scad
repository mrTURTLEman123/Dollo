include <veriables.scad>;

difference(){
	union(){
		cube([150,bearing_outer+(wall_thickness*2),aluminum_width*2],center=true);
		cube([motor_width+(wall_thickness*2),motor_width+(wall_thickness*2),aluminum_width*2],center=true);
	}
	translate([0,0,wall_thickness])cube([motor_width,motor_width,aluminum_width*2],center=true);
	translate([0,0,aluminum_width]) cube([150,aluminum_width+(wall_thickness*2),aluminum_width*2],center=true);
	translate([150/2-smooth_rod,0,0]) cylinder(d=smooth_rod,h=100,center=true);
	translate([-150/2+smooth_rod,0,0]) cylinder(d=smooth_rod,h=100,center=true);
	//T-slot screw holes
	translate([150/3-smooth_rod,0,0]) cylinder(d=screw_diamiter,h=100,center=true);
	translate([-150/3+smooth_rod,0,0]) cylinder(d=screw_diamiter,h=100,center=true);
	//motor_screws
	translate([motor_screw_space/2,motor_screw_space/2,0]) cylinder(d=3.5, h=200, center=true);
	rotate([0,0,90]) translate([motor_screw_space/2,motor_screw_space/2,0]) cylinder(d=3.5, h=200, center=true);
	rotate([0,0,180]) translate([motor_screw_space/2,motor_screw_space/2,0]) cylinder(d=3.5, h=200, center=true);
	rotate([0,0,-90]) translate([motor_screw_space/2,motor_screw_space/2,0]) cylinder(d=3.5, h=200, center=true);
}