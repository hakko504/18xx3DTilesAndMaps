include <../Tiles/18xx tiles basic functions.scad>
hex("blue");
put_tilenr("015");
difference(){ 
    union() {
        light_curve(2);
        sharp_curve(2);
        translate([hex_size/3,hex_size/3,0]) single_city([]);
        }
    translate([hex_size/3,hex_size/3,1.5]) text_handler("GNR");
    }

difference(){ 
    union() {
        light_curve(5);
        sharp_curve(5);
        translate([-hex_size/3,-hex_size/3,0]) single_city([]);
        }
    translate([-hex_size/3,-hex_size/3,1.5]) text_handler("GCR");
    }
put_value_blue("20",95);
put_value_blue("20",-85);
