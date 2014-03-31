/* Author: Antonio Navarro
 * License: LGPLv2.1
 * 
 * This is my desing of a Trammel of Archimedes in OpenSCAD
 * Feel free to modify.
 *
 * Configuration file
 */

$fn=50;

/****** Slider parameters *****/
slider_height=30;
slider_lenght=30;
top_width=15;
down_width=25;
rad_round=5;
slider_axe=top_width/2;

/****** base parameters *****/
base_lenght=100;
base_thickness=3;
base_rad=10;
base_height=slider_height;

/****** arm parameters *****/
arm_thickness=3;
arm_lenght=base_lenght+30;
ext_width=10;
arm_hole=slider_axe+ext_width;
arm_width=top_width;