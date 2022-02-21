include <18xx tiles basic functions.scad>
hex("gray");
put_tilenr("50");
rotate([0,0,90]) translate([0,0.6*hex_size,0]) single_city([]);
translate([0,hex_size-city_size-3*width,0]) single_city([]);
rotate([0,0,-90]) translate([0,0.6*hex_size,0]) single_city([]);

straight_line(r=0);
sharp_curve(r=1);
sharp_curve(r=4);
put_value("70",-150);
put_value("BGM" , 138);
