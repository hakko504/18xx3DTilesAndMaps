include <../tiles/18xx tiles basic functions.scad>
hex("Blue");
single_city([2,5],"PRR");
put_tilenr("H12");
put_value_blue("10",-30);
difference(){linear_extrude(2) difference(){ circle(0.7*hex_size);
        circle(0.7*hex_size-1);
        }
        rotate([0,0,30]) translate([-hex_size,0,0])cube([2*hex_size,hex_size,5]);
    }
