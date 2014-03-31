/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 * This is my desing of a Trammel of Archimedes in OpenSCAD
 * Feel free to modify.
 * 
 * Edit 'config.scad' to change parameters.
 *
 * Base desing
 *
 */

include <config.scad>
use <slider.scad>

//four_sides();
six_sides();

module base4(){

	x=(base_lenght/2)-down_width/2;
	y=(base_lenght/2)-down_width/2;
	z=0;

	base = [
		[x,y,z],
		[x,-y,z],
		[-x,y,z],
		[-x,-y,z]
	];

	linear_extrude(height=base_thickness+base_height)
		hull(){
			for(i = [0:3])
				translate(base[i])
					circle(r=base_rad);
		}
}

module four_sides(){

	gap=0.5;
	diagonal=base_lenght*2;
	
	difference(){
		base4();
		translate([0,0,base_thickness+gap])
			slider(diagonal,gap);
		rotate([0,0,90])
			translate([0,0,base_thickness+gap])
				slider(diagonal,gap);
	}
}


module base6(){

  linear_extrude(height=base_thickness+base_height)
		hull(){
			for(i = [0:5])
				rotate([0,0,i*60])
					translate([base_lenght,0,0])
						circle(r=base_rad);
		}
}

module six_sides(){

	gap=0.5;
	diagonal=base_lenght*3;
	
	difference(){
		base6();
		rotate([0,0,30])
			translate([0,0,base_thickness+gap])
				slider(diagonal,gap);
		rotate([0,0,-30])
			translate([0,0,base_thickness+gap])
				slider(diagonal,gap);
		rotate([0,0,90])
			translate([0,0,base_thickness+gap])
				slider(diagonal,gap);
	}
}
