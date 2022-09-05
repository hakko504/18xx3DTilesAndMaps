include <../../Scripts/18xx tiles basic functions.scad>
hex("Green");
put_tilenr("O09");
put_value("40",-85);
put_value("40",-170);
put_value("L",60);

quarter_line(4);
quarter_line(0);

translate([ -hex_size/4, hex_size/3,0]) single_city([]);
translate([ hex_size/3, -hex_size/3,0]) single_city([]);