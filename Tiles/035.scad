include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("35");
put_value("40",-60);
put_value("OO", 0);
light_curve_bridge();
light_curve(r=5);
rotate([0,0,-60]) translate([0,hex_size-1.6*city_size,2]) single_city([]);
rotate([0,0,-60]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
rotate([0,0,120]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
