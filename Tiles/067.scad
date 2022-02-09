include <18xx tiles basic functions.scad>
hex("Green");
put_tilenr("67");
put_value("50",-30);
put_value("50",-60);
put_value("OO",90);

light_curve(5);
straight_line_bridge(0);
translate([-0.5*hex_size, -hex_size/3,0]) single_city([]);
translate([ hex_size/4, hex_size/2,0]) single_city([]);
translate([ hex_size/4, hex_size/2,2]) single_city([]);