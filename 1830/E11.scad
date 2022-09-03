include <../tiles/18xx tiles basic functions.scad>
hex("Yellow");
put_value_blue("OO",-30);
translate([hex_size/2,hex_size/3,0]) single_city([],"Eire");
put_tilenr("E11");
translate([-hex_size/2,-hex_size/3,0]) single_city([]);
