include <../Tiles/18xx tiles basic functions.scad>
hex("blue");
put_tilenr("W09");
difference(){ 
    union() {
        light_curve(1);
        sharp_curve(1);
        translate([hex_size/1.5,0,0]) single_city([]);
        }
    translate([hex_size/1.5,0,1.5]) text_handler("S&DR");
    }
straight_line(0);
