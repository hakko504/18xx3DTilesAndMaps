//You can choose your own size for the cities on this tile
//any tokens for this tile should be width smaller than the
//town_size chosen

include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("32");
six_city();
translate([0,(-0.63)*hex_size,0]) put_value("70",0);
translate([0,(-0.97)*hex_size,0]) put_value("LD",0);
