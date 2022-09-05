include <../Scripts/18xx tiles basic functions.scad>
hex("Green");
put_tilenr("66");
put_value("50",-30);
put_value("50",-150);
put_value("OO",120);

sharp_curve(4);
straight_line(0);
translate([-hex_size/2, 0,0]) single_city([]);
translate([ hex_size/4, hex_size/2,0]) single_city([]);