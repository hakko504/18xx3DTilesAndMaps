include <../tiles/18xx tiles basic functions.scad>
hex("Yellow");
put_value_blue("OO",-30);
translate([hex_size/2,hex_size/3,0]) single_city([]);
put_tilenr("X16");
//put_value_red("$40");
translate([-hex_size/2,-hex_size/3,0]) single_city([]);
