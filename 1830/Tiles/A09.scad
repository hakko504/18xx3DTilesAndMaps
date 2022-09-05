include <../../Scripts/18xx tiles basic functions.scad>
hex_pair("Red");
translate([ hex_size+2*width,0,0]) rotate([0,0,-30]) union (){put_tilenr("A09"); quarter_line(3);quarter_line(4);};
translate([-hex_size-2*width,0,0]) rotate([0,0,-30]) union (){put_tilenr("A07"); quarter_line(4);};
put_values_red(["30","50"]);