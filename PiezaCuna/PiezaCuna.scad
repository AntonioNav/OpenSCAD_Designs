use<Parte1.scad>;
use<Parte2.scad>;

$fn=100;

module PiezaCuna(){
	color("lightblue")
		parte1(17.4);
	color("lightgreen")
		translate([2.1,-12,0])
			scale([1.8,1.8,1])
				parte2(3);
}

module MediaLuna(){
	rotate([0,0,118])
	difference(){
		cylinder(r=4,h=4);
		translate([3,0,-0.1])
			cylinder(r=5,h=4.2);
	}
}

module HuecoTornillo(){
	translate([0,0,-1])
		cylinder(r=1.5/2,h=5);
}

difference(){
	PiezaCuna();
	translate([5.5,-22.5,-0.1])
		MediaLuna();
	translate([4,-20,0])
		HuecoTornillo();
}
