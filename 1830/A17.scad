include <../tiles/18xx tiles basic functions.scad>
hex_pair("Blue");
translate([ hex_size+2*width,0,0]) rotate([0,0,-30]) union (){put_tilenr("A19"); single_city(v=[3,4],home_company="CPR");};
translate([-hex_size-2*width,0,0]) rotate([0,0,-30]) union (){put_tilenr("A17"); sharp_curve(0);};
translate([ hex_size+2*width,0,0]) put_value("40",-30);
