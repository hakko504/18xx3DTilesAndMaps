include <18xx tiles basic functions.scad>
hex("Green");
put_tilenr("10");
rotate([0,0,60])translate([0,0.5*hex_size,0]) single_city(v=[]);
quarter_line(1);
rotate([0,0,60])translate([0,-0.5*hex_size,0]) single_city(v=[]);
quarter_line(4);
put_value("30",230);
put_value("30",50);
put_value("OO",0);
