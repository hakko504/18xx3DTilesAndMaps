include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("33");
rotate([0,0,29]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
quarter_line(r=0);
rotate([0,0,-60]) union() {
    translate([0,hex_size-city_size-3*width,0]) single_city([]);
    quarter_line();
};
rotate([0,0,211]) translate([0,hex_size-1.6*city_size,0]) single_city([]);
quarter_line(r=4);


put_value("50",-150);
put_value("L" , -90);
