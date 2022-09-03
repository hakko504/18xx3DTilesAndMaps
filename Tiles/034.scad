include <../Scripts/18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("34");
rotate([0,0,90]) translate([0,0.6*hex_size,0]) single_city([]);
difference(){ sharp_curve(r=4);
    rotate([0,0,120])translate([0,hex_size-city_size,0])single_city([]);
}
rotate([0,0,-90]) translate([0,0.6*hex_size,0]) single_city([]);
difference(){ sharp_curve(r=1);
    rotate([0,0,-120])translate([0,hex_size-city_size,0])single_city([]);
}
translate([0,hex_size-city_size-3*width,0]) single_city([]);
straight_line(r=3);
put_value("50",-150);
put_value("BGM" , 138);
