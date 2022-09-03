include <../Scripts/18xx tiles basic functions.scad>
hex("Green");
put_tilenr("64");
put_value("50",-30);
put_value("50",-90);
put_value("OO",120);

sharp_curve(2);
light_curve(4);
translate([ hex_size/4,  hex_size/3,0]) single_city([]);
translate([-hex_size/4, -hex_size/2,0]) single_city([]);