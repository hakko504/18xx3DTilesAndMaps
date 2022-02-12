// Adjust these value to match what you need for the tiles and tokens
// Note that these values are HALF the actual size of the tile and the track.
// The thickness is hardcoded to 1mm
// Use a scaling function on your printer to change that.
// Using values above 13*hex_size/38 (default) for token size may
// cause cities to grow outside the hex or cover values, 
// tile names (OO/Y/C etc.) or tile numbers.
hex_size=38/2; 
width=1/2; 
token_size=13/2;

/* This one is NOT inteded to be changed, but if you want a tighter fit
 * between tokens and the city holes, then you can change it to 0.3 or
 * even 0.2. DO NOT MAKE A FULLPRINT WITHOUT TESTING IT. Depending on the
 * tolerances of your printer you might make it very hard to put a token
 * in the city hole. A looser fit is acheived by changing it to 0.75 or 1.
*/
city_size=token_size+0.5;

 module regular_polygon(order, r=1){
        angles=[ for (i = [1:order]) i*(360/order) ];
        coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
        coord=coords / sin(angles[0]);
        polygon(coord);
 }
module hex(colour="Yellow"){
    color(colour)
    linear_extrude(1) regular_polygon(6,hex_size);
}

module hex_pair(colour="Blue"){
    translate([-hex_size-2*width,0,0]) rotate([0,0,-30]) hex(colour);
    translate([+hex_size+2*width,0,0]) rotate([0,0,-30]) hex(colour);
    translate([0,0,0.5]) cube([4*width,2*hex_size*tan(30),1],center=true);
}

module straight_line(r=0){
    rotate([0,0,r*60]) color("Black") 
        translate([0,0,1]) {
            translate([-width,-hex_size,0]) cube([2*width,2*hex_size,1]);
        }
}
module straight_line_bridge(r=0){
    translate([0, 0, 1]) union() {
        difference() {
            scale([1,1,2.5]) translate([0, 0, -1]) straight_line(r);
            difference() {
            scale([1,1,2.5]) translate([0, 0, -1]) straight_line(r);
            translate([0,0,-1.6*hex_size]) sphere(1.8*hex_size);
            };
        }
        translate([0, 0, -1]) straight_line(r);
    }
}


module half_line(r=0){
    rotate([0,0,r*60]) color("Black") 
        translate([-width,0,1])
            cube([2*width,hex_size,1]);
}

module quarter_line(r=0){
    rotate([0,0,r*60]) color("Black") 
        translate([-width,hex_size/2,1])
            cube([2*width,hex_size/2,1]);
}

module sharp_curve(r=0){
    rotate([0,0,r*60]) color("Black")
    translate([0,0,1]) intersection(){
        translate([sin(150)*hex_size/cos(30),-hex_size,0])
        linear_extrude(1) difference(){circle(sin(30)*hex_size/cos(30)+width); circle(sin(30)*hex_size/cos(30)-width);};
            hex();
        }
}

module light_curve(r=0){
    rotate([0,0,r*60]) color("Black")
    translate([0,0,1]) intersection(){
        translate([sin(60)*hex_size/sin(30),-hex_size,0])
        linear_extrude(1) difference(){circle(sin(60)*hex_size/sin(30)+width); circle(sin(60)*hex_size/sin(30)-width);};
            hex();
        }
}

module light_curve_bridge(r=0){
    translate([0, 0, 1]) union() {
        difference() {
            scale([1,1,2.5]) translate([0, 0, -1]) light_curve(r);
            difference() {
            scale([1,1,2.5]) translate([0, 0, -1]) light_curve(r);
            translate([0,0,-1.6*hex_size]) sphere(1.8*hex_size);
            };
        }
        translate([0, 0, -1]) light_curve(r);
    }
}


module single_city(v=0){
        difference(){union(){for(r= v) half_line(r);
        translate([0,0,1]) linear_extrude(3) circle(city_size+width);}
        translate([0,0,2]) linear_extrude(3) circle(city_size);
    }
}

module double_city(v=0){
    difference(){union(){for(r= v) half_line(r);
        translate([-city_size-0.5*width,-city_size-width,1]) cube([2*city_size+width,2*city_size+2*width,2]);
        translate([-city_size-0.5*width,0,1]) linear_extrude(3) circle(city_size+width);
        translate([+city_size+0.5*width,0,1]) linear_extrude(3) circle(city_size+width);
        }
        translate([+city_size+0.5*width,0,2]) linear_extrude(3) circle(city_size);
        translate([-city_size-0.5*width,0,2]) linear_extrude(3) circle(city_size);
    }  
}

module triple_city(v=0){
   tc=(city_size+0.5*width)/cos(30);
    difference(){union(){for(r=v) half_line(r);
        translate([0,0,1]) linear_extrude(3) minkowski() {regular_polygon(3,tc);
            circle(city_size+width);}
            }
        translate([tc*sin(90),tc*cos(90),2]) linear_extrude(3) circle(city_size);    
        translate([tc*sin(210),tc*cos(210),2]) linear_extrude(3) circle(city_size);
        translate([tc*sin(330),tc*cos(330),2]) linear_extrude(3) circle(city_size);}
}

module quad_city(v=0){
   qc=(city_size+0.5*width);

       difference(){union(){for(r=v) half_line(r);
        translate([0,0,1]) rotate([0,0,45]) linear_extrude(3) minkowski() {regular_polygon(4,qc*sqrt(2));
            circle(city_size+width);}
            }
        translate([qc,qc,2]) linear_extrude(3) circle(city_size);    
        translate([qc,-qc,2]) linear_extrude(3) circle(city_size);
        translate([-qc,qc,2]) linear_extrude(3) circle(city_size);
        translate([-qc,-qc,2]) linear_extrude(3) circle(city_size);}
}

module text_handler(txt){
    scale_factor=hex_size/50;
    scale([scale_factor,scale_factor,1]) linear_extrude(3) text(txt,8,"Arial:style=Bold",valign="center",halign="center");
}

module put_tilenr(txt){
    translate([7*width,-hex_size+1,1]) scale([hex_size/50,hex_size/50,1]) linear_extrude(1) text(txt,8,"Arial:style=Bold",halign="left");
}

module put_value(txt,angle=0){
    rotate([0,0,-angle]) translate([0,0.8*hex_size,1]) rotate([0,0,angle]){
         linear_extrude(2.2) circle(9*hex_size/50);
        text_handler(txt);
    }
}
module put_value_blue(txt,angle=0){
    rotate([0,0,-angle]) translate([0,0.8*hex_size,1]) rotate([0,0,angle+30]){
         linear_extrude(2.2) circle(9*hex_size/50);
         text_handler(txt);
    }
}
module put_value_red(txt){
    translate([0,0,1.1]) cube([19*hex_size/50,13*hex_size/50,2.2],center=true);
    text_handler(txt);
    }
    
module put_values_red(txt){
    lg=len(txt);
    translate([-hex_size*(lg-1)/5,0,0]) for(i=[0:lg-1]) {translate([2*hex_size*i/5,0,0]) put_value_red(txt[i]);
    }
}

module small_town(dist=0){
    color("Brown") translate([0,dist,1]) linear_extrude(2) circle(4*width);
}

module small_town_straight(r=0,dist=0){
    rotate([0,0,r*60]) union() {    straight_line(0);
    small_town(dist);}
        
}

module small_town_light_curve(r=0){
    union() {light_curve(r);
//needs fix
    rotate([0,0,r*60+240]) small_town(0.3*hex_size);}
}

module small_town_light_curve2(r=0){
    union() {light_curve(r);
    rotate([0,0,r*60+184]) small_town(0.7*hex_size);}
}

module small_town_sharp_curve(r=0){
    union() {sharp_curve(r);
    rotate([0,0,r*60-150]) small_town(0.57*hex_size);
    }
}

module thin_token(name){
    linear_extrude(2) circle(token_size);
    translate([0,0,2]) linear_extrude(1) text(name,token_size/2,"Arial:style=Bold",valign="center",halign="center");
}


module large_station_circle(){
    difference(){
        translate([0,0,1]) linear_extrude(1) circle(city_size);
        translate([0,0,1]) linear_extrude(1) circle(city_size-width);
    }
}
// tile_type - B,NY,C,Y, etc.
// blocker - if a private blocks the tile, put short name of private here
// cost - cost to put a tile here
// home company - name of company with home station in the tile
// large_station - zero, one or two
// small_stations - zero, one or two
// note that not all combinations of small & large stations is legal
module make_map_tile(hex="A01",tile_type="",blocker="",cost="",large_station=0,home_company="",small_station=0,hex_block,hex_open){
        // define a couple of help points for borders
        angles=[ for (i = [0:6]) i*360/6 ];
        r_o=  hex_size+2*width;
        r_i=  hex_size+  width;
        outer_coords=[ for (th=angles) [r_o*cos(th), r_o*sin(th)] ];
        inner_coords=[ for (th=angles) [r_i*cos(th), r_i*sin(th)] ];
        outer_coord=outer_coords / sin(angles[1]);
        inner_coord=inner_coords / sin(angles[1]);
        // move to right place
        y_pos=ord("A") - ord(hex[0]);
        x_pos=10*(ord(hex[1])-ord("0"))+ord(hex[2])-ord("0");
        echo("y_pos ",y_pos);
        echo("x_pos ",x_pos);
        translate([x_pos*(hex_size+2*width),1.5*y_pos*(hex_size+2*width)/ sin(angles[1]),0]) rotate([0,0,-30]) union(){ for(r=hex_block){
            p=[outer_coord[r],outer_coord[r+1],inner_coord[r+1],inner_coord[r]];
            linear_extrude(4) polygon(points=p);
        }
        difference(){
            //base hex
            linear_extrude(2) regular_polygon(6,hex_size+2*width);
            translate([0,0,1.5]) linear_extrude(1) regular_polygon(6,hex_size+width);
            for(r=hex_open){
                p=[outer_coord[r],outer_coord[r+1],inner_coord[r+1],inner_coord[r]];
                translate([0,0,1.5]) linear_extrude(4) polygon(points=p);
            }
            put_tilenr(hex);
            rotate([0,0,60]) translate([0,hex_size-city_size,1]) rotate([0,0,-30]) text_handler(tile_type);
            rotate([0,0,120]) translate([0,hex_size-city_size,1]) rotate([0,0,-90]) text_handler(blocker);
            rotate([0,0,-60]) translate([0,hex_size-city_size,1]) rotate([0,0,90]) text_handler(cost);
            if((large_station==2)||((large_station==1)&&(small_station==1))) {
                //put large_station top right, with home_company if available
                translate([0,hex_size-city_size,0]) large_station_circle();
                translate([0,hex_size-city_size,1]) rotate([0,0,30]) text_handler(home_company);
                if(large_station==2){
                    translate([0,-hex_size+city_size,0]) large_station_circle();
                }
                else {
                    translate([0,-hex_size+city_size,0]) small_town();
                }
            }
            else if(large_station==1){
                //put_large station center, with home_company if available
                large_station_circle();
                translate([0,0,1]) rotate([0,0,30]) text_handler(home_company);
            }
            else if(small_station==2){
                // put home_company center if available
                // put small station top right and bottom left
                translate([0,0,1]) rotate([0,0,30]) text_handler(home_company);
                translate([0, hex_size-city_size-width,0]) small_town();
                translate([0,-hex_size+city_size+width,0]) small_town();
            }
            else if(small_station==1){
                // put home_company top_left if available
                // put small station center
                translate([0,hex_size-city_size-width,1]) rotate([0,0,30]) text_handler(home_company);
                small_town();
            }
        }
    }
}
make_map_tile(hex="A01",tile_type="B", blocker="BO",cost="$120",large_station=2,home_company="NYNH",small_station=1,hex_block=[0],hex_open=[5]);
make_map_tile(hex="A03",tile_type="B", blocker="NYC",cost="$80",large_station=1,home_company="Eire",small_station=1,hex_block=[3],hex_open=[4]);
make_map_tile(hex="B02",tile_type="B", blocker="PRR",cost="",large_station=0,home_company="C&O",small_station=2,hex_block=[],hex_open=[1,2]);

//put_value("100",00);
//put_tilenr("999");
//quad_city();

//quad_city([0,1,2,3,4,5]);
//translate([150,0,0]){hex(); double_city([0,2]);}
//translate([0,150,0]){hex(); single_city([0,2]);}
//light_curve();
//small_town_straight(1,30);
//hex();
//thin_token("MWW");