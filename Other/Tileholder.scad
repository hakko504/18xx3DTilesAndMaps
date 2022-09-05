include <../Scripts/18xx tiles basic functions.scad>
// 30 pcs means 181 mm long
hexes=30;
yt=hex_size+4*width;
zt=1.25*hex_size;
difference() {
    translate([0,-yt,-zt]) cube([6*hexes+1,2*yt,zt]);
    for(i=[0:(hexes-1)]){
            translate([1+i*6,0,0]) rotate([0,90,0]) linear_extrude(5) regular_polygon(6,hex_size+2*width);
    }
}    