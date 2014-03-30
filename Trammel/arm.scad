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

module arm(){

	ext_lenght=20;
	ext_width=10;
	gap=0.2;

	linear_extrude(height=arm_thickness)
		translate([-arm_lenght/2,0,0])
			difference(){
				hull(){
					circle(d=arm_width);
					translate([arm_lenght+ext_lenght,0,0])
						circle(d=arm_width+ext_width);
				}
				circle(d=slider_axe+gap);
				translate([arm_lenght/2,0,0])
					circle(d=slider_axe+gap);
				translate([arm_lenght+ext_lenght,0,0])
					circle(d=slider_axe+ext_width);
			}
}

arm();