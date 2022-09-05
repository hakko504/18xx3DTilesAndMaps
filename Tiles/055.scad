include <../Scripts/18xx tiles basic functions.scad>
hex();
put_tilenr("55");
straight_line_bridge(r=0);
small_town_straight(r=0,dist=3*hex_size/4);
small_town_straight(r=4,dist=hex_size/2);
put_value("10",30);
put_value("10",90);

