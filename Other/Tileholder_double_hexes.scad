include <../Scripts/18xx tiles basic functions.scad>
// 5 pcs means 31 mm long
hexes=5;

yt=hex_size+3*width;
zt=1.25*hex_size;
difference() {
    translate([0,-2*yt,-zt]) cube([hexes*6+1,4*yt,zt]);
    for(i=[0:(hexes-1)]){
            translate([1+i*6,-yt+width,0]) rotate([0,90,0]) linear_extrude(5) regular_polygon(6,hex_size+2*width);
            translate([1+i*6,+yt-width,0]) rotate([0,90,0]) linear_extrude(5) regular_polygon(6,hex_size+2*width);
    }
}    