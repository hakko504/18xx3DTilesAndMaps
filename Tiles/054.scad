include <18xx tiles basic functions.scad>
hex("Green");
put_tilenr("54");
put_value("60",40);
put_value("60",140);
put_value("NY",90);

difference() {sharp_curve(r=3);
translate([-hex_size/4, hex_size/2,0]) single_city([]);}
translate([-hex_size/4, hex_size/2,0]) single_city([],"NYNH");
sharp_curve(r=5);
translate([-hex_size/4, -hex_size/2,0]) single_city([]);