include <18xx tiles basic functions.scad>
hex("Yellow");
put_value_blue("NY",-30);
translate([hex_size/3,hex_size/2,0]) single_city([]);
quarter_line(0);
quarter_line(3);
translate([hex_size/3,hex_size/2,0]) rotate([0,0,30]) put_values_red(["NY","NH"]);
put_tilenr("G19");
translate([-hex_size/3,-hex_size/2,0]) single_city([]);
rotate([0,0,30]) put_value_red("$80");