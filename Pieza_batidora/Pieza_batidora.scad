//constantes

cube_side=3.75;
cube_height=12.9;

base_circle=9.5;  				//diametro
base_circle_height=2;

inner_cylinder=5.5;				//diametro
inner_cylinder_height=14.5;

total_height=base_circle_height + inner_cylinder_height;

crest_lenght=(base_circle-inner_cylinder)/2 + 1; //adding 1 mm for overgap
crest_width=2.4;
crest_height=11.5;


difference(){

	difference(){

		union(){
			//base circular
			cylinder(r=base_circle/2,h=base_circle_height,$fn=50);

			//cilindro principal
			translate([0,0,base_circle_height])
				cylinder(r=inner_cylinder/2,h=inner_cylinder_height,$fn=50);

			//Cresta
			translate([(base_circle/2-(crest_lenght*0.5)),0,(crest_height/2 + base_circle_height)])
				cube([crest_lenght,crest_width,crest_height],center=true);

			//Cresta
			rotate([0,0,90])
				translate([(base_circle/2-(crest_lenght*0.5)),0,(crest_height/2 + base_circle_height)])
					cube([crest_lenght,crest_width,crest_height],center=true);

			//Cresta
			rotate([0,0,180])
				translate([(base_circle/2-(crest_lenght*0.5)),0,(crest_height/2 + base_circle_height)])
					cube([crest_lenght,crest_width,crest_height],center=true);

			//Cresta
			rotate([0,0,270])
				translate([(base_circle/2-(crest_lenght*0.5)),0,(crest_height/2 + base_circle_height)])
					cube([crest_lenght,crest_width,crest_height],center=true);
		} //end union

		//cubo interno
		translate([0,0,cube_height/2-0.2])
			cube([cube_side, cube_side, cube_height+1],center=true);
	} //end difference

	//Usamos un 'donut' para redondear el exterior de la pieza.
	difference(){
		cylinder(r=base_circle,h=total_height,$fn=50);
		cylinder(r=base_circle/2,h=total_height,$fn=50);
	}
}
