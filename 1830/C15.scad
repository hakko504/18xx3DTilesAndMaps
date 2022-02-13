include <../tiles/18xx tiles basic functions.scad>
hex_pair("Blue");
translate([ hex_size+2*width,0,0]) rotate([0,0,-90]) union (){put_tilenr("C15");
    small_town_light_curve(3);
    put_value_blue("10",-60);};
translate([-hex_size-2*width,0,0]) rotate([0,0,-90]) union (){put_tilenr("D14");
    single_city([2,3,5]);
    put_value_blue("20",-60);};