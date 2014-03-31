/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 * This is my desing of a Trammel of Archimedes in OpenSCAD
 * Feel free to modify.
 * 
 * Edit 'config.scad' to change parameters.
 *
 * Arm desing
 *
 */

include <config.scad>

//arm4();
arm6();

module arm4(){

	gap=0.2;

	linear_extrude(height=arm_thickness)
		difference(){
			hull(){
				translate([-base_lenght/2,0,0])
					circle(d=arm_width);
				translate([arm_lenght,0,0])
					circle(d=arm_hole+ext_width);
			}

			circle(d=slider_axe+gap);
			translate([-base_lenght/2,0,0])
				circle(d=slider_axe+gap);
			translate([arm_lenght,0,0])
				circle(d=arm_hole);
		}
}

module arm6(){

	gap=0.2;

	linear_extrude(height=arm_thickness)
		difference(){
			union(){
				hull(){
					circle(d=arm_width);
					translate([-base_lenght,0,0])
						circle(d=arm_width);
				}
				hull(){
					circle(d=arm_width);
					rotate([0,0,-30])
						translate([0,-base_lenght,0])
							circle(d=arm_width);
				}
				hull(){
					circle(d=arm_width);
					rotate([0,0,30])
						translate([arm_lenght,0,0])
							circle(d=arm_hole+ext_width);
				}
			}
			circle(d=slider_axe+gap);
			translate([-base_lenght,0,0])
				circle(d=slider_axe+gap);
			rotate([0,0,-30])
				translate([0,-base_lenght,0])
					circle(d=slider_axe+gap);
			rotate([0,0,30])
				translate([arm_lenght,0,0])
					circle(d=arm_hole);
		}
}