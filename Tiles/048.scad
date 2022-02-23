//You can choose your own size for the cities on this tile
//any tokens for this tile should be width smaller than the
//town_size chosen

include <18xx tiles basic functions.scad>
hex("Gray");
put_tilenr("48");
six_city();
translate([0,(-0.63)*hex_size,0]) put_value("100",0);
translate([0,(-0.97)*hex_size,0]) put_value("LD",0);
