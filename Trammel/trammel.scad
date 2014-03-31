/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 * This is my desing of a Trammel of Archimedes in OpenSCAD
 * Feel free to modify.
 * 
 * This file is to visualize the entire mechanism
 * Edit 'config.scad' to change parameters.
 * Use the other files to print.
 * 
 */

include <config.scad>
use <slider.scad>
use <base.scad>
use <arm.scad>

space=(base_lenght+arm_lenght)+50;

translate([-space/2,0,0]){
	trammel_4();
	translate([space,0,0])
		trammel_6();
}

module trammel_4(){
	four_sides();
	diagonal=base_lenght/2;

	color("orange"){
		translate([0,0,base_thickness])
			slider();
		rotate([0,0,90])
			translate([0,diagonal,base_thickness])
				slider();
	}

	color("green")
		translate([0,0,base_thickness+base_height+0.5])
			arm4();
}

module trammel_6(){
	six_sides();
	diagonal=base_lenght;

	color("orange"){
		rotate([0,0,30])
			translate([0,0,base_thickness])
				slider();
		rotate([0,0,-30])
			translate([0,-diagonal,base_thickness])
				slider();
		rotate([0,0,90])
			translate([0,diagonal,base_thickness])
				slider();
	}

	color("green")
		translate([0,0,base_thickness+base_height+0.5])
			arm6();

}