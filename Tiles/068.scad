include <18xx tiles basic functions.scad>
hex("Green");
put_tilenr("68");
put_value("50",-30);
put_value("50", 75);
put_value("OO", -150);

straight_line(1);
straight_line_bridge(0);
translate([ 0.5*hex_size, -hex_size/3,0]) single_city([]);
translate([ hex_size/4, hex_size/2,0]) single_city([]);
translate([ hex_size/4, hex_size/2,2]) single_city([]);