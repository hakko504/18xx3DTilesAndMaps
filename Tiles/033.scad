include <../Scripts/18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("33");
rotate([0,0,30]) translate([0,0.6*hex_size,0]) single_city([]);
difference(){ sharp_curve(r=3);
    rotate([0,0,60])translate([0,hex_size-city_size,0])single_city([]);
}
rotate([0,0,-150]) translate([0,0.6*hex_size,0]) single_city([]);
difference(){ sharp_curve(r=0);
    rotate([0,0,-180])translate([0,hex_size-city_size,0])single_city([]);
}
rotate([0,0,-60])translate([0,hex_size-city_size-3*width,0]) single_city([]);
quarter_line(-1);

put_value("50",-150);
put_value("L" , -90);
