include <18xx tiles basic functions.scad>
hex();
put_tilenr(" 10");
translate([0,0.5*hex_size,0]) single_city(v=[]);
quarter_line(0);
translate([0,-0.5*hex_size,0]) single_city(v=[]);
quarter_line(3);
put_value("30",230);
put_value("30",50);
