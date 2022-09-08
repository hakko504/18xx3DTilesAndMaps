include <../Scripts/18xx tiles basic functions.scad>
hex("Gray");
translate([-width,0,0]) put_tilenr("174");
rotate([0,0,-107]) translate([0,0.6*hex_size,0]) single_city([]);
rotate([0,0, 167]) translate([0,0.6*hex_size,0]) single_city([]);
sharp_curve(r=1);
sharp_curve(r=5);
straight_line(1);
difference(){
    straight_line_bridge(0);
    rotate([0,0, 167]) translate([0,0.6*hex_size,0]) linear_extrude(4) circle(city_size+width);
}

put_value("OO",-30);
put_value("70",40);
put_value("70",-100);
