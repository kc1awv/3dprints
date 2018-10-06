anchor_length=22;	// total length of the wall anchor


screw_major_diameter=3.5;	// diameter of shoulder of screw (#6 is 3.33 mm)
screw_minor_diameter=1;

straight_section_length=8;	// length of anchor before taper and cuts start

flange_diameter=8;  		// diameter of flange outside of anchor
flange_thickness=1.2;
anchor_wall_thickness=1.5;	// how much material there is in the wall of the anchor

cutout_width=1;
cutout_length=14;
cutout_offset=0;			// distance of cutout from end of anchor

rib_width=1;
rib_length=straight_section_length;
rib_stickout=0.8;

difference() {
	union() {
		cylinder(r=flange_diameter/2, h=flange_thickness);
		cylinder(r=screw_major_diameter/2+anchor_wall_thickness, h=straight_section_length+flange_thickness);
		translate([0,0,straight_section_length+flange_thickness]) cylinder(r1=screw_major_diameter/2+anchor_wall_thickness, r2=screw_minor_diameter/2+anchor_wall_thickness, h=anchor_length-straight_section_length-flange_thickness);
		rotate(v=[0,0,1],a=45) translate([0,0,flange_thickness+rib_length/2]) cube([screw_major_diameter+2*anchor_wall_thickness+rib_stickout*2,rib_width,rib_length],center=true);
		rotate(v=[0,0,1],a=135) translate([0,0,flange_thickness+rib_length/2]) cube([screw_major_diameter+2*anchor_wall_thickness+rib_stickout*2,rib_width,rib_length],center=true);
	}
	
	union() {
		cylinder(r=screw_major_diameter/2, h=straight_section_length+flange_thickness);
		translate([0,0,straight_section_length+flange_thickness]) cylinder(r1=screw_major_diameter/2, r2=screw_minor_diameter/2, h=anchor_length-straight_section_length-flange_thickness);
		translate([0,0,cutout_length/2+anchor_length-cutout_length-cutout_offset]) cube([screw_major_diameter+2*anchor_wall_thickness,cutout_width,cutout_length],center=true);
		rotate(v=[0,0,1],a=90) translate([0,0,cutout_length/2+anchor_length-cutout_length-cutout_offset]) cube([screw_major_diameter+2*anchor_wall_thickness,cutout_width,cutout_length],center=true);
	}
}