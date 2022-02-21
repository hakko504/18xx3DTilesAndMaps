include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("118");
rotate([0,0,30]) translate([0,0.5*hex_size,0]) single_city([]);
rotate([0,0,150]) translate([0,0.5*hex_size,0]) single_city([]);
sharp_curve(r=3);
sharp_curve(r=5);
put_value("OO",30);
put_value("40",90);

