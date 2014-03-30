include<Spool_mount_for_i3_config.scad>

module enganche1(){
	difference(){
		cube([9,20,10]);
		translate([3,-3,-1])
			cube([9,20,12]);
	}

	translate([9,17,0])
		rotate([0,0,170])
			cube([3,10,10]);
}

module enganche2(){
	translate([0,0,width+3])
	rotate([0,180,0])
		difference(){
			cube([10,height+6,width+3]);
			translate([-1,3,-1])
				cube([12,height,width+1]);
		}
}

translate([20,0,0]) enganche1();

enganche2();