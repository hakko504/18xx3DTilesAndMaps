include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("167");
put_value("70",-45);
put_value("OO",-15);
light_curve_bridge();
light_curve(r=5);
sharp_curve(r=2);
sharp_curve(r=4);
rotate([0,0,-60]) translate([0,hex_size-1.6*city_size,2]) single_city([]);
rotate([0,0,-60]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
rotate([0,0,120]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
