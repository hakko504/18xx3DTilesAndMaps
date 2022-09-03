include <../../Scripts/18xx tiles basic functions.scad>
hex("Yellow");
put_value_blue("OO",-30);
translate([hex_size/2,hex_size/3,0]) single_city([]);
put_tilenr("E05");
put_value_red("$80");
translate([-hex_size/2,-hex_size/3,0]) single_city([]);
