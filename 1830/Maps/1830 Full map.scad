include <../../Scripts/18xx tiles basic functions.scad>

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
make_map_tile(hex="G07",small_station=2);
make_map_tile(hex="H02");
make_map_tile(hex="H04",large_station=1);
make_map_tile(hex="H06");
make_map_tile(hex="H08");
make_map_tile(hex="I01",tile_type="Red",hex_open=[5]);
make_map_tile(hex="I03");
make_map_tile(hex="I05");
make_map_tile(hex="I07");
make_map_tile(hex="J02",tile_type="Red",hex_open=[2]);
make_map_tile(hex="J04");
make_map_tile(hex="J06");
make_map_tile(hex="J08");
}
module make_map_top_center(){
make_map_tile(hex="A09",tile_type="Red",hex_open=0);
make_map_tile(hex="A11",tile_type="Red",hex_open=3);
make_map_tile(hex="B10",large_station=1);
make_map_tile(hex="B12");
make_map_tile(hex="B14");
make_map_tile(hex="B16",large_station=1,hex_block=5);
make_map_tile(hex="C09");
make_map_tile(hex="C11",hex_block=[5]);
make_map_tile(hex="C13",hex_block=[4]);
make_map_tile(hex="C15",small_station=1,tile_type="Fixed",hex_open=[4]);
make_map_tile(hex="D10",tile_type="OO",large_station=2,cost="$80");
make_map_tile(hex="D12",hex_block=[1,2]);
make_map_tile(hex="D14",tile_type="Fixed",hex_open=[1]);
make_map_tile(hex="D16");
}
module make_map_center() {
make_map_tile(hex="E09",tile_type="Fixed");
make_map_tile(hex="E11",tile_type="OO",large_station=2,home_company="Eire");
make_map_tile(hex="E13");
make_map_tile(hex="E15");
make_map_tile(hex="F10",small_station=1);
make_map_tile(hex="F12");
make_map_tile(hex="F14");
make_map_tile(hex="F16",blocker="DH", large_station=1,cost="$120");
make_map_tile(hex="G09");
make_map_tile(hex="G11");
make_map_tile(hex="G13",cost="$120");
make_map_tile(hex="G15",blocker="SV", cost="$120");
}

module make_map_bottom_center(){
make_map_tile(hex="H10",large_station=1);
make_map_tile(hex="H12",large_station=1,home_company="PRR",tile_type="Fixed");
make_map_tile(hex="H14");
make_map_tile(hex="H16",large_station=1);
make_map_tile(hex="I09");
make_map_tile(hex="I11",cost="$120");
make_map_tile(hex="I13",blocker="BO");
make_map_tile(hex="I15",blocker="BO",large_station=1,home_company="B&O",tile_type="B");
make_map_tile(hex="J10",cost="$120");
make_map_tile(hex="J12",cost="$120");
make_map_tile(hex="J14",cost="$80",large_station=1);
make_map_tile(hex="K13",tile_type="Red");
make_map_tile(hex="K15",tile_type="Fixed",large_station=1);
}

module make_map_top_right(){
make_map_tile(hex="A17",tile_type="Fixed",hex_open=0);
make_map_tile(hex="A19",tile_type="Fixed",large_station=1,home_company="CPR",hex_open=3);
make_map_tile(hex="B18",cost="$80");
make_map_tile(hex="B20",blocker="CS",small_station=1);
make_map_tile(hex="B22");
make_map_tile(hex="B24",tile_type="Red");
make_map_tile(hex="C17",cost="$120",hex_block=[2]);
make_map_tile(hex="C19",cost="$80");
make_map_tile(hex="C21",cost="$120");
make_map_tile(hex="C23");
make_map_tile(hex="D18",blocker="MH",home_company="MH");
make_map_tile(hex="D20");
make_map_tile(hex="D22",cost="$120");
make_map_tile(hex="D24",tile_type="Fixed");
}

module make_map_bottom_right(){
make_map_tile(hex="E17",cost="$120");
make_map_tile(hex="E19",large_station=1,home_company="NYC");
make_map_tile(hex="E21",cost="$120");
make_map_tile(hex="E23",tile_type="B",large_station=1,home_company="B&M");
make_map_tile(hex="F18");
make_map_tile(hex="F20",small_station=2);
make_map_tile(hex="F22",large_station=1,cost="$80");
make_map_tile(hex="F24",small_station=1,tile_type="Fixed");
make_map_tile(hex="G17",small_station=2);
make_map_tile(hex="G19",large_station=2,tile_type="NY",home_company="NYNH",cost="$80");
make_map_tile(hex="H18",large_station=2,tile_type="OO",blocker="CA");
make_map_tile(hex="I17",cost="$80");
make_map_tile(hex="I19",small_station=1,tile_type="Fixed");
}
make_map_top_left();
make_map_bottom_left();
make_map_top_center();
make_map_center();
make_map_bottom_center();
make_map_top_right();
make_map_bottom_right();


