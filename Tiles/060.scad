include <18xx tiles basic functions.scad>
hex("Gray");
put_tilenr("060");
for(r=[0:5]){
    straight_line(r);
    light_curve(r);
    sharp_curve(r);
};
