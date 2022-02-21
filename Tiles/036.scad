include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("35");
light_curve();
light_curve(r=3);
rotate([0,0,-60]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
rotate([0,0,120]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
put_value("40",120);
put_value("OO",-30);