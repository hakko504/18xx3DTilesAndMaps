include <../../Scripts/18xx tiles basic functions.scad>
hex("Yellow");
put_tilenr("I15");
single_city([3,5],"B&O");
translate([-3*hex_size/4,hex_size/3,0]) rotate([0,0,30]) put_value_red("BO");
//rotate([0,0,30]) put_value_red();
put_value_blue("30",90);
put_value_blue("B",-30);
