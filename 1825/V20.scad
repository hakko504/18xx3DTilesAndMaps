//You can choose your own size for the cities on this tile
//any tokens for this tile should be width smaller than the
//town_size chosen

include <../Tiles/18xx tiles basic functions.scad>
hex("Green");
put_tilenr(" V20");
difference(){
    six_city();
    translate([0,-hex_size+town_size+1.5*width,1.5]) text_handler("LSW");
    rotate([0,0,-60]) translate([0,hex_size-town_size-1.5*width,1.5]) rotate([0,0,60]) text_handler("GER");
    
}

translate([0,(-0.63)*hex_size,0]) put_value("50",0);
translate([0,(-0.97)*hex_size,0]) put_value("LD",0);
