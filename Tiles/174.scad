include <../Scripts/18xx tiles basic functions.scad>
hex("Brown");
translate([-width,0,0]) put_tilenr("174");
rotate([0,0,-107]) translate([0,0.6*hex_size,0]) single_city([]);
rotate([0,0, 167]) translate([0,0.6*hex_size,0]) single_city([]);
sharp_curve(r=1);
sharp_curve(r=5);
straight_line(2);
put_value("OO",30);
put_value("50",-90);

