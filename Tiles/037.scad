include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("37");
difference() {
    light_curve();
    rotate([0,0,-60]) translate([0,hex_size-city_size,0]) single_city([]);
};
rotate([0,0,-60]) translate([0,hex_size-city_size-3*width,0]) single_city([]);
difference() {
    light_curve(r=3);
    rotate([0,0,120]) translate([0,hex_size-city_size,0]) single_city([]);
}
rotate([0,0,120]) translate([0,hex_size-city_size-3*width,0]) single_city([]);
straight_line(0);
put_value("40",120);
put_value("OO",-30);