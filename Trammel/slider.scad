/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 * This is my desing of a Trammel of Archimedes in OpenSCAD
 * Feel free to modify.
 * 
 * Edit 'config.scad' to change parameters.
 *
 * Slider desing
 *
 */
include <config.scad>

module slider(lenght=slider_lenght, margin=0){

	x1=(top_width/2)-rad_round+margin;
	x2=(down_width/2)-rad_round+margin;
	y=(slider_height/2)-rad_round;
	z=0;

	base = [
		[x1,y,z],
		[x2,-y,z],
		[-x1,y,z],
		[-x2,-y,z]
	];

	translate([0,0,slider_height/2])
		rotate([90,0,0])
			linear_extrude(height=lenght, center=true){
				hull(){
					for(i = [0:3])
						translate(base[i])
							circle(r=rad_round);
				}
			}
	translate([0,0,slider_height-0.1])
		cylinder(d=slider_axe,h=arm_thickness*2);

}

slider();