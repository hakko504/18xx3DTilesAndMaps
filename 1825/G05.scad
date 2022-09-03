include <../Tiles/18xx tiles basic functions.scad>
hex("green");
put_tilenr("G05");
put_value_blue("40",60);
put_value_blue("BGM",-60);
difference(){
    n_city([0,2,4]);
    rotate([0,0,60]) translate([0,-hex_size+city_size+3*width,1.5]) rotate([0,0,-30]) text_handler("CR");
    rotate([0,0,180]) translate([0,-hex_size+city_size+3*width,1.5]) rotate([0,0,-150]) text_handler("NBR");
    rotate([0,0,-60]) translate([0,-hex_size+city_size+3*width,1.5]) rotate([0,0,90]) text_handler("GSWR");
}
