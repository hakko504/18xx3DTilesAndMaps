include <../tiles/18xx tiles basic functions.scad>
hex("Yellow");
put_value_blue("NY",-30);
put_value("40",-90);
put_value("40",90);
translate([hex_size/3,hex_size/2,0]) single_city([],"NYNH");
quarter_line(0);
quarter_line(3);
put_tilenr("G19");
translate([-hex_size/3,-hex_size/2,0]) single_city([]);
rotate([0,0,30]) put_value_red("$80");