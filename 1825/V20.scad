//You can choose your own size for the cities on this tile
//any tokens for this tile should be width smaller than the
//town_size chosen

include <../Tiles/18xx tiles basic functions.scad>
hex("Green");
put_tilenr(" V20");
six_city();
translate([0,(-0.63)*hex_size,0]) put_value("50",0);
translate([0,(-0.97)*hex_size,0]) put_value("LD",0);
