include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("34");
rotate([0,0,89]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
quarter_line(r=1);
    translate([0,hex_size-city_size-3*width,0]) single_city([]);
    quarter_line();
rotate([0,0,271]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
quarter_line(r=5);
straight_line(r=3);
put_value("50",-150);
put_value("BGM" , 138);
