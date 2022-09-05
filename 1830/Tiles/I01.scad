include <../../Scripts/18xx tiles basic functions.scad>
hex_pair("Red");
translate([ hex_size+2*width,0,0]) rotate([0,0,30]) union (){put_tilenr("J02"); quarter_line(5);quarter_line(6);};
translate([-hex_size-2*width,0,0]) rotate([0,0,30]) union (){put_tilenr("I01"); quarter_line(5);};
rotate([0,0,60]) put_values_red(["30","60"]);
