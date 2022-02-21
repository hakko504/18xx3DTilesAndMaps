// Note that this tile (and #32 and the start tile for London)
// is problematic becuase with a tilesize of 38, cities will overlap
// if the token_size exceeds 10.5 (and width = 1)
// Good values includes:
// 38  /10.5/1
// 40  /11  /1
// 41  /11  /1.5
// 42.5/12  /1
// 43  /12  /1.5
// 45  /12.5/1.2
// 50  /13  /2
include <18xx tiles basic functions.scad>
hex("Brown");
put_tilenr("32");
for(r=[0:5]) {
    rotate([0,0,60*r]) union() {
        translate([0,hex_size-city_size-1.5*width,0]) single_city([]);
        quarter_line();
    }
};
translate([0,(-0.63)*hex_size,0]) put_value("70",0);
translate([0,(-0.97)*hex_size,0]) put_value("LD",0);
