include <18xx tiles basic functions.scad>
hex("Green");
put_tilenr("59");
put_value("40",-40);
put_value("40",140);
put_value("OO",90);

quarter_line(5);
quarter_line(3);

translate([ hex_size/4,  hex_size/3,0]) single_city([]);
translate([-hex_size/4, -hex_size/2,0]) single_city([]);