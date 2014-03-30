/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 *
 *
 *
 *
 *
 *
 *
 */

include <config.scad>
use <slider.scad>

$fn=50;

module platform(){

	x=(base_lenght/2)-down_width/2;
	y=(base_lenght/2)-down_width/2;
	z=0;

	base = [
		[x,y,z],
		[x,-y,z],
		[-x,y,z],
		[-x,-y,z]
	];

//	rotate([0,0,45])
		linear_extrude(height=base_thickness+base_height)
			hull(){
				for(i = [0:3])
					translate(base[i])
						circle(r=base_rad);
			}
}

module base(){

	gap=0.5;
	diagonal=base_lenght*2;
	
	difference(){
		platform();
		translate([0,0,base_thickness+gap])
			slider(diagonal,gap);
		rotate([0,0,90])
			translate([0,0,base_thickness+gap])
				slider(diagonal,gap);
	}
}

base();