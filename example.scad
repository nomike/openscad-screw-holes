include<screw_holes.scad>

object_length = 30;
object_depth = 10;
object_height = 10;


difference() {
    cube([object_length, object_depth, object_height]);
    translate([object_length/4, object_depth/2, 0]) screw_hole(DIN34811, M3, object_height);
    translate([object_length/4 * 2, object_depth/2, 0]) screw_hole(ISO4762, M4, object_height, 3);
    translate([object_length/4 * 3, object_depth/2, 0]) screw_hole(ISO10642, M2, object_height, 3);
}

