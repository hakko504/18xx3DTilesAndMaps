include <../Scripts/18xx tiles basic functions.scad>
hex("Green");
put_tilenr("65");
put_value("50",-90);
put_value("50",-220);
put_value("OO",-150);

//ToDo: remove rotate and change other numbers to match.
rotate([0,0,120]) {sharp_curve(1);
light_curve(4);
translate([ hex_size/2, 0,0]) single_city([]);
translate([-hex_size/4, -hex_size/2,0]) single_city([]);};