include <../Scripts/18xx tiles basic functions.scad>
hex("Green");
put_tilenr(" 52");
rotate([0,0,60]) translate([0,0.5*hex_size,0]) single_city(v=[]);
quarter_line(1);
translate([0,-0.5*hex_size,0]) single_city(v=[]);
quarter_line(3);
put_value("40",230);
put_value("40",-10);
put_value("OO",50);
