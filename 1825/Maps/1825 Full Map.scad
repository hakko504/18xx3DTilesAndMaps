include <../../Scripts/18xx tiles basic functions.scad>
module make_map_R2(){
    zz=chr(ord("Z")+1);
    zz_1=str(zz,"01");
    zz_0=str(zz,"0",chr(ord("0")-1));
    make_map_tile(hex=zz_0,small_station=1,hex_block=[2,3,4,5]);
    make_map_tile(hex=zz_1,large_station=1,hex_block=[4,5,0]);
    make_map_tile(hex="Z00",hex_block=[2,3]);
    make_map_tile(hex="Z02",small_station=1,hex_block=[5]);
    make_map_tile(hex="Z04",large_station=2,tile_type="OO",hex_block=[4,5]);
    make_map_tile(hex="Z06",small_station=1,hex_block=[4,5,0]);
    make_map_tile(hex="Y01",hex_block=[1,2,3]);
    make_map_tile(hex="Y03",hex_block=[2]);
    make_map_tile(hex="Y05",cost="$100");
    make_map_tile(hex="Y07",large_station=1,home_company="GWR",hex_block=[5]);
    make_map_tile(hex="X04",small_station=1,hex_block=[1,2,3]);
    make_map_tile(hex="X06",cost="$100",hex_block=[1,2]);
    
}
module make_map_U1SW(){
    make_map_tile(hex="Y09",hex_block=[4,5]);
    make_map_tile(hex="Y11",small_station=1,hex_block=[4,5]);
    make_map_tile(hex="Y13",tile_type="Fixed",large_station=1,hex_block=[0,4,5]);
    make_map_tile(hex="X08",hex_block=[2]);
    make_map_tile(hex="X10");
    make_map_tile(hex="X12");
    make_map_tile(hex="X14",large_station=1,hex_block=[5]);
    make_map_tile(hex="X16",large_station=2,tile_type="OO",hex_block=[4]);
    make_map_tile(hex="W09",tile_type="Fixed",large_station=1,home_company="S&DR",hex_block=[3]);
    make_map_tile(hex="W11",small_station=2);
    make_map_tile(hex="W13");
    make_map_tile(hex="W15");
    make_map_tile(hex="V08",large_station=2,tile_type="OO",home_company="TV",hex_block=[4]);
    make_map_tile(hex="V10",large_station=1);
    make_map_tile(hex="V12");
    make_map_tile(hex="V14",tile_type="Fixed",large_station=1,home_company="GWR");
    make_map_tile(hex="V16",small_station=1);
}
module make_map_U1SE(){
    make_map_tile(hex="Y17",tile_type="Fixed",hex_block=[3,4,5]);
    make_map_tile(hex="Y19",tile_type="Fixed",hex_block=[0,4,5]);
    make_map_tile(hex="X18");
    make_map_tile(hex="X20",large_station=1,home_company="LSBC",blocker="LSBC",hex_block=[5]);
    make_map_tile(hex="X22",small_station=1,hex_block=[4,5]);
    make_map_tile(hex="X24",hex_block=[0,4,5]);
    make_map_tile(hex="W17");
    make_map_tile(hex="W19",small_station=2,blocker="LSWR");
    make_map_tile(hex="W21");
    make_map_tile(hex="W23",large_station=1,home_company="SECR",cost="$40",hex_block=[1]);
    make_map_tile(hex="W25",tile_type="Fixed",large_station=1,hex_block=[0,1,2,5]);
    make_map_tile(hex="V18",blocker="GWR");
    make_map_tile(hex="V20",large_station=2,home_company="LW GE");
    make_map_tile(hex="V22",large_station=1,tile_type="Fixed",home_company="LTS",hex_block=[0]);
}

module make_map_U1NW(){
    make_map_tile(hex="U09");
    make_map_tile(hex="U11",small_station=1);
    make_map_tile(hex="U13");
    make_map_tile(hex="U15");
    make_map_tile(hex="U17",blocker="LNWR");
    make_map_tile(hex="T08",cost="$100");
    make_map_tile(hex="T10");
    make_map_tile(hex="T12");
    make_map_tile(hex="T14");
    make_map_tile(hex="T16",tile_type="Fixed",large_station=1,home_company="LNWR");
    make_map_tile(hex="S09");
    make_map_tile(hex="S11");
    make_map_tile(hex="S13",tile_type="BGM",large_station=2);
    make_map_tile(hex="S15",small_station=1);
    make_map_tile(hex="R08",large_station=1,home_company="Cam",blocker="Cam");
    make_map_tile(hex="R10",small_station=1);
    make_map_tile(hex="R12",large_station=2,tile_type="OO");
    make_map_tile(hex="R14");
    make_map_tile(hex="R16",large_station=1);
}
module make_map_U1NE(){
    make_map_tile(hex="U19");
    make_map_tile(hex="U21");
    make_map_tile(hex="U23",blocker="GER",small_station=1,hex_block=[5]);
    make_map_tile(hex="U25",tile_type="Fixed",large_station=1,hex_block=[0,1,4,5]);
    make_map_tile(hex="T18");
    make_map_tile(hex="T20",small_station=1);
    make_map_tile(hex="T22");
    make_map_tile(hex="T24",small_station=1,hex_block=[0]);
    make_map_tile(hex="S17");
    make_map_tile(hex="S19");
    make_map_tile(hex="S21");
    make_map_tile(hex="S23");
    make_map_tile(hex="S25",hex_block=[0,5]);
    make_map_tile(hex="R18");
    make_map_tile(hex="R20",small_station=1,hex_block=[1]);
    make_map_tile(hex="R22",hex_block=[2]);
    make_map_tile(hex="R24",large_station=1);
    make_map_tile(hex="R26",small_station=1,hex_block=[0,1,5]);
}


module make_map_R1S(){
    make_map_tile(hex="V06",tile_type="Fixed",large_station=1,hex_block=[3,4,5]);
    make_map_tile(hex="U01",tile_type="Fixed",large_station=1,hex_block=[2,3,4,5]);
    make_map_tile(hex="U03",hex_block=[4,5]);
    make_map_tile(hex="U05",hex_block=[4]);
    make_map_tile(hex="U07",small_station=2);
    make_map_tile(hex="T02",large_station=1,hex_block=[1,2,3]);
    make_map_tile(hex="T04",hex_block=2);
    make_map_tile(hex="T06",cost="$100");
    
}
module make_map_R1N(){
    make_map_tile(hex="S05",small_station=1,hex_block=[2,3]);
    make_map_tile(hex="S07",cost="$100");
    make_map_tile(hex="R06",hex_block=[3]);
    make_map_tile(hex="Q05",small_station=1,hex_block=[3,4]);
    make_map_tile(hex="Q07",cost="$100");
    make_map_tile(hex="P04",tile_type="Fixed",large_station=1,hex_block=[1,2,3,4]);
    make_map_tile(hex="P06",cost="$40",hex_block=[1,2]);
}
module make_map_R3(){
    make_map_tile(hex="Q23",tile_type="Fixed",large_station=1,home_company="M&GN",hex_block=[1,2,3]);
    make_map_tile(hex="Q25",hex_block=[0,1,2]);
}
module make_map_U2SE(){
    make_map_tile(hex="Q15",large_station=1,home_company="MR",blocker="MR");
    make_map_tile(hex="Q17",large_station=1);
    make_map_tile(hex="Q19",hex_block=[0]);
    make_map_tile(hex="P16",large_station=2,tile_type="OO");
    make_map_tile(hex="P18",small_station=1);
    make_map_tile(hex="P20",hex_block=[0,1,5]);
    make_map_tile(hex="O15",tile_type="fixed", home_company="GN GC",large_station=2);
    make_map_tile(hex="O17",cost="$40");
    make_map_tile(hex="O19",cost="$40",hex_block=[0,1]);
}
module make_map_U2NE(){
    make_map_tile(hex="N14",large_station=2,tile_type="OO");
    make_map_tile(hex="N16");
    make_map_tile(hex="N18",large_station=1,cost="$40",hex_block=[0]);
    make_map_tile(hex="M15",small_station=2);
    make_map_tile(hex="M17");
    make_map_tile(hex="M19",hex_block=[0,1,5]);
    make_map_tile(hex="L14",large_station=1,home_company="NER",blocker="NER");
    make_map_tile(hex="L16",hex_block=[1]);
    make_map_tile(hex="L18",small_station=1,hex_block=[0,1,2]);
}
module make_map_U2SW(){
    make_map_tile(hex="Q09");
    make_map_tile(hex="Q11",tile_type="Fixed",large_station=1,home_company="LNWR");
    make_map_tile(hex="Q13",small_station=2,home_company="NS");
    make_map_tile(hex="P08",hex_block=[2]);
    make_map_tile(hex="P10",cost="$40");
    make_map_tile(hex="P12",cost="$100");
    make_map_tile(hex="P14",cost="$100");
    make_map_tile(hex="O09",large_station=2,tile_type="L",hex_block=[2,3]);
    make_map_tile(hex="O11",large_station=2,tile_type="BGM",home_company="L&Y");
    make_map_tile(hex="O13",cost="$100");
}
module make_map_U2NW(){
    make_map_tile(hex="N10",large_station=1,blocker="L&Y",hex_block=[3]);
    make_map_tile(hex="N12",small_station=2);
    make_map_tile(hex="M09",tile_type="Fixed",large_station=1,home_company="LNWR",hex_block=[3,4]);
    make_map_tile(hex="M11",cost="$100");
    make_map_tile(hex="M13",cost="$100");
    make_map_tile(hex="L08",hex_block=[3,4]);
    make_map_tile(hex="L10");
    make_map_tile(hex="L12",cost="$100");
}

module make_map_U3NE(){
    make_map_tile(hex="F08",small_station=1,cost="$120");
    make_map_tile(hex="F10",small_station=1,tile_type="Fixed",hex_block=[0,1]);
    make_map_tile(hex="E07",large_station=2,tile_type="Fixed");
    make_map_tile(hex="E09",large_station=1,cost="$80",hex_block=[0]);
    make_map_tile(hex="D08",cost="$100");
    make_map_tile(hex="D10",small_station=1,hex_block=[0,5]);
    make_map_tile(hex="C07",cost="$100");
    make_map_tile(hex="C09",small_station=1,cost="$100");
    make_map_tile(hex="C11",hex_block=[0,5]);
    make_map_tile(hex="B08",large_station=1,tile_type="Fixed",home_company="HR",hex_block=[0,1,2,3]);
    make_map_tile(hex="B12",large_station=1,tile_type="Fixed",home_company="GNoS",hex_block=[0,1,2,3,5]);
}
module make_map_U3NW(){
    make_map_tile(hex="F02",small_station=2,tile_type="Fixed",hex_block=[3,4]);
    make_map_tile(hex="F04",small_station=1,cost="$140");
    make_map_tile(hex="F06",small_station=1);
    make_map_tile(hex="E01",large_station=1,tile_type="Fixed",hex_block=[2,3,4]);
    make_map_tile(hex="E03",cost="$100");
    make_map_tile(hex="E05",cost="$100",hex_block=[2,3,4]);
    make_map_tile(hex="D02",cost="$100",hex_block=[3]);
    make_map_tile(hex="D04",cost="$100");
    make_map_tile(hex="D06",cost="$100");
}

module make_map_U3SW(){
    make_map_tile(hex="J02",large_station=1,hex_block=[2,3,4,5]);
    make_map_tile(hex="J04",cost="$100",hex_block=[4,5]);
    make_map_tile(hex="J06",large_station=1,hex_block=[4]);
    make_map_tile(hex="I03",cost="$100",hex_block=[2,3]);
    make_map_tile(hex="I05");
    make_map_tile(hex="I07",cost="$100");
    make_map_tile(hex="H04",small_station=2,blocker="GSWR",hex_block=[3]);
    make_map_tile(hex="H06",large_station=1);
    make_map_tile(hex="G03",large_station=1,hex_block=[3,4]);
    make_map_tile(hex="G05",large_station=2,tile_type="BGM");
    make_map_tile(hex="G07",small_station=2);
}
module make_map_U3SE(){
    make_map_tile(hex="K07",tile_type="Fixed",large_station=1,home_company="M&C",hex_block=[3,4]);
    make_map_tile(hex="K09",cost="$100");
    make_map_tile(hex="K11",cost="$100");
    make_map_tile(hex="K13",small_station=1);
    make_map_tile(hex="K15",small_station=2,hex_block=[0,1]);
    make_map_tile(hex="J08");
    make_map_tile(hex="J10",large_station=1);
    make_map_tile(hex="J12",cost="$100");
    make_map_tile(hex="J14",large_station=2,tile_type="OO",cost="$40",hex_block=[0,1]);
    make_map_tile(hex="I09",cost="$100");
    make_map_tile(hex="I11",cost="$100");
    make_map_tile(hex="I13",small_station=2,hex_block=[0]);
    make_map_tile(hex="H08",cost="$100");
    make_map_tile(hex="H10",cost="$100");
    make_map_tile(hex="H12",hex_block=[1]);
    make_map_tile(hex="H14",hex_block=[0,1,2,5]);
    make_map_tile(hex="G09",large_station=2,tile_type="OO",cost="$40");
    make_map_tile(hex="G11",hex_block=[0,1]);
}



make_map_R1S();
make_map_R1N();
make_map_R2();
make_map_R3();
make_map_U1NE();
make_map_U1NW();
make_map_U1SE();
make_map_U1SW();
make_map_U2NE();
make_map_U2NW();
make_map_U2SE();
make_map_U2SW();
make_map_U3SW();
make_map_U3NW();
make_map_U3SE();
make_map_U3NE();

