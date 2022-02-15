include <../Tiles/18xx tiles basic functions.scad>
module make_map_R2(){
    zz=chr(ord("Z")+1);
    zz_1=str(zz,"01");
    zz_0=str(zz,"0",chr(ord("0")-1));
    make_map_tile(hex=zz_0,small_station=1);
    make_map_tile(hex=zz_1,large_station=1);
    make_map_tile(hex="Z00");
    make_map_tile(hex="Z02",small_station=1);
    make_map_tile(hex="Z04",large_station=2,tile_type="OO");
    make_map_tile(hex="Z06",small_station=1);
    make_map_tile(hex="Y01");
    make_map_tile(hex="Y03");
    make_map_tile(hex="Y05",cost="$100");
    make_map_tile(hex="Y07",large_station=1,home_company="GWR");
    make_map_tile(hex="X04",small_station=1);
    make_map_tile(hex="X06",cost="$100");
    
}
module make_map_U1(){
    make_map_tile(hex="Y09");
    make_map_tile(hex="Y11",small_station=1);
    make_map_tile(hex="Y13",tile_type="Fixed",large_station=1);
    make_map_tile(hex="Y17",tile_type="Fixed");
    make_map_tile(hex="Y19",tile_type="Fixed");
    make_map_tile(hex="X08");
    make_map_tile(hex="X10");
    make_map_tile(hex="X12");
    make_map_tile(hex="X14",large_station=1);
    make_map_tile(hex="X16",large_station=2,tile_type="OO");
    make_map_tile(hex="X18");
    make_map_tile(hex="X20",large_station=1,home_company="LSBC",blocker="LSBC");
    make_map_tile(hex="X22",small_station=1);
    make_map_tile(hex="X24");
    make_map_tile(hex="W09",tile_type="Fixed",large_station=1,home_company="S&DR");
    make_map_tile(hex="W11",small_station=2);
    make_map_tile(hex="W13");
    make_map_tile(hex="W15");
    make_map_tile(hex="W17");
    make_map_tile(hex="W19",small_station=2,blocker="LSWR");
    make_map_tile(hex="W21");
    make_map_tile(hex="W23",large_station=1,home_company="SECR",cost="$40");
    make_map_tile(hex="W25",tile_type="Fixed",large_station=1);
    make_map_tile(hex="V08",large_station=2,tile_type="OO",home_company="TV");
    make_map_tile(hex="V10",large_station=1);
    make_map_tile(hex="V12");
    make_map_tile(hex="V14",tile_type="Fixed",large_station=1,home_company="GWR");
    make_map_tile(hex="V16",small_station=1);
    make_map_tile(hex="V18",blocker="GWR");
    make_map_tile(hex="V20",large_station=2,home_company="LW GE");
    make_map_tile(hex="V22",large_station=1,tile_type="Fixed",home_company="TV");

    make_map_tile(hex="U09");
    
    make_map_tile(hex="T08",cost="$100");
    
    make_map_tile(hex="S09");
    
    make_map_tile(hex="R08");
    
}
module make_map_R1S(){
    make_map_tile(hex="V06",tile_type="Fixed",large_station=1);
    make_map_tile(hex="U01",tile_type="Fixed",large_station=1);
    make_map_tile(hex="U03");
    make_map_tile(hex="U05");
    make_map_tile(hex="U07",small_station=2);
    make_map_tile(hex="T02",large_station=1);
    make_map_tile(hex="T04");
    make_map_tile(hex="T06",cost="$100");
    
}
module make_map_R1N(){
    make_map_tile(hex="S05",small_station=1);
    make_map_tile(hex="S07",cost="$100");
    make_map_tile(hex="R06");
    make_map_tile(hex="Q05",small_station=1);
    make_map_tile(hex="Q07",cost="$100");
    make_map_tile(hex="P04",tile_type="Fixed",large_station=1);
    make_map_tile(hex="P06",cost="$40");
}

//make_map_R1S();
//make_map_R1N();
//make_map_R2();
make_map_U1();
