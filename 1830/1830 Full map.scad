include <../Tiles/18xx tiles basic functions.scad>

module make_map_top_left(){
make_map_tile(hex="C07");
make_map_tile(hex="D02",large_station=1,tile_type="Fixed");
make_map_tile(hex="D04",small_station=1);
make_map_tile(hex="D06",cost="$80");
make_map_tile(hex="D08");
make_map_tile(hex="E03");
make_map_tile(hex="E05",tile_type="OO",large_station=2,cost="$80");
make_map_tile(hex="E07",small_station=1,hex_block=[5]);
make_map_tile(hex="F02",tile_type="Red");
make_map_tile(hex="F04",large_station=1,cost="$80");
make_map_tile(hex="F06",large_station=1,tile_type="Fixed",home_company="C&O");
make_map_tile(hex="F08",hex_block=[2]);
}
module make_map_bottom_left(){
make_map_tile(hex="G03");
make_map_tile(hex="G05");
make_map_tile(hex="G07");
make_map_tile(hex="H02");
make_map_tile(hex="H04");
make_map_tile(hex="H06");
make_map_tile(hex="H08");
make_map_tile(hex="I01");
make_map_tile(hex="I03");
make_map_tile(hex="I05");
make_map_tile(hex="I07");
make_map_tile(hex="J02");
make_map_tile(hex="J04");
make_map_tile(hex="J06");
make_map_tile(hex="J08");
}
module make_map_top_center(){
make_map_tile(hex="A09");
make_map_tile(hex="A11");
make_map_tile(hex="B10");
make_map_tile(hex="B12");
make_map_tile(hex="B14");
make_map_tile(hex="B16");
make_map_tile(hex="C09");
make_map_tile(hex="C11");
make_map_tile(hex="C13");
make_map_tile(hex="C15");
make_map_tile(hex="D10");
make_map_tile(hex="D12");
make_map_tile(hex="D14");
make_map_tile(hex="D16");
}
module make_map_center() {
make_map_tile(hex="E09");
make_map_tile(hex="E11");
make_map_tile(hex="E13");
make_map_tile(hex="E15");
make_map_tile(hex="F10");
make_map_tile(hex="F12");
make_map_tile(hex="F14");
make_map_tile(hex="F16");
make_map_tile(hex="G09");
make_map_tile(hex="G11");
make_map_tile(hex="G13");
make_map_tile(hex="G15");
}

module make_map_bottom_center(){
make_map_tile(hex="H10");
make_map_tile(hex="H12");
make_map_tile(hex="H14");
make_map_tile(hex="H16");
make_map_tile(hex="I09");
make_map_tile(hex="I11");
make_map_tile(hex="I13");
make_map_tile(hex="I15");
make_map_tile(hex="J10");
make_map_tile(hex="J12");
make_map_tile(hex="J14");
make_map_tile(hex="K13");
make_map_tile(hex="K15");
}

module make_map_top_right(){
make_map_tile(hex="A17");
make_map_tile(hex="A19");
make_map_tile(hex="B18");
make_map_tile(hex="B20");
make_map_tile(hex="B22");
make_map_tile(hex="B24");
make_map_tile(hex="C17");
make_map_tile(hex="C19");
make_map_tile(hex="C21");
make_map_tile(hex="C23");
make_map_tile(hex="D18");
make_map_tile(hex="D20");
make_map_tile(hex="D22");
make_map_tile(hex="D24");
make_map_tile(hex="E17");
make_map_tile(hex="E19");
make_map_tile(hex="E21");
make_map_tile(hex="E23");
}

module make_map_bottom_right(){
make_map_tile(hex="F18");
make_map_tile(hex="F20");
make_map_tile(hex="F22");
make_map_tile(hex="F24");
make_map_tile(hex="G17");
make_map_tile(hex="G19");
make_map_tile(hex="H18");
make_map_tile(hex="I17");
make_map_tile(hex="I19");
}
//make_map_top_left();
make_map_bottom_left();
//make_map_top_center();
//make_map_center();
//make_map_bottom_center();
//make_map_top_right();
//make_map_bottom_right();


