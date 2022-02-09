include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("62");
put_value("80", 82);
put_value("80",-85);
translate([0,-0.75*hex_size,0]) put_value("NY",00);

sharp_curve(r=3);
translate([0, hex_size/2,0]) double_city([]);
sharp_curve(r=5);
translate([0, -.38*hex_size,0]) double_city([]);