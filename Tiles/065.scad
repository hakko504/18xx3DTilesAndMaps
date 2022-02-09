include <18xx tiles basic functions.scad>
hex("Green");
put_tilenr("65");
put_value("50",30);
put_value("50",-90);
put_value("OO",-30);

sharp_curve(1);
light_curve(4);
translate([ hex_size/2, 0,0]) single_city([]);
translate([-hex_size/4, -hex_size/2,0]) single_city([]);