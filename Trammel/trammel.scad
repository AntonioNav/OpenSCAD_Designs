/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 * This is my desing of a Trammel of Archimedes in OpenSCAD
 * Feel free to modify.
 * 
 * This file is to visualize the entire mechanism
 * Edit 'config.scad' to change parameters.
 * You can use the other 3 files to print.
 *
 */

include <config.scad>
use <slider.scad>
use <base.scad>
use <arm.scad>

base();
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
		arm();