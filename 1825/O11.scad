include <18xx tiles basic functions.scad>
hex("green");
put_tilenr("G05");
put_value_blue("40",-120);
put_value_blue("BGM",0);
difference(){
    n_city([1,3,5]);
    rotate([0,0,240]) translate([0,-hex_size+city_size+3*width,1.5]) rotate([0,0,150]) text_handler("L&Y");
}
