include <../Tiles/18xx tiles basic functions.scad>
hex("blue");
put_tilenr("V22");

sharp_curve(0);
light_curve(3);


put_value_blue("20",15);
rotate([0,0,30]) translate([city_size,0,0]) single_city([],"LT&S");
half_line(2);