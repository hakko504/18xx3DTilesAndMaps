#!/bin/bash
echo "Building 1830 Tiles"
cd ../Tiles
for i in *.scad ; do
  echo "Building $i"
  openscad "$i" -o "${i%.scad}.stl"
done

mkdir -pv Yellow Blue Red Green Gray Brown
mv A09.stl A11.stl B24.stl F02.stl I01.stl J02.stl K13.stl Red/
mv A17.stl A19.stl C15.stl D02.stl D14.stl D24.stl Blue/
mv E09.stl F06.stl F24.stl H12.stl I10.stl K15.stl Blue/
mv D10.stl E05.stl E11.stl E23.stl G19.stl H18.stl I14.stl Yellow/
cp ../../Tiles/*.stl .
mv 001.stl Yellow/001_1.stl 
mv 002.stl Yellow/002_1.stl 
mv 003.stl Yellow/003_2.stl 
mv 004.stl Yellow/004_2.stl 
mv 007.stl Yellow/007_4.stl 
mv 008.stl Yellow/008_8.stl 
mv 009.stl Yellow/009_7.stl 
mv 055.stl Yellow/055_1.stl 
mv 056.stl Yellow/056_1.stl 
mv 057.stl Yellow/057_4.stl 
mv 058.stl Yellow/058_2.stl 
mv 069.stl Yellow/069_1.stl 

mv 014.stl Green/014_3.stl 
mv 015.stl Green/015_2.stl 
mv 016.stl Green/016_1.stl 
mv 018.stl Green/018_1.stl 
mv 019.stl Green/019_1.stl 
mv 020.stl Green/020_1.stl 
mv 023.stl Green/023_3.stl 
mv 024.stl Green/024_3.stl 
mv 025.stl Green/025_1.stl 
mv 026.stl Green/026_1.stl 
mv 027.stl Green/027_1.stl 
mv 028.stl Green/028_1.stl 
mv 029.stl Green/029_1.stl 
mv 053.stl Green/053_2.stl 
mv 054.stl Green/054_1.stl 
mv 059.stl Green/059_2.stl 

mv 039.stl Brown/039_1.stl 
mv 040.stl Brown/040_1.stl 
mv 041.stl Brown/041_2.stl 
mv 042.stl Brown/042_2.stl 
mv 043.stl Brown/043_2.stl 
mv 044.stl Brown/044_1.stl 
mv 045.stl Brown/045_2.stl 
mv 046.stl Brown/046_2.stl 
mv 047.stl Brown/047_1.stl 
mv 061.stl Brown/061_2.stl 
mv 062.stl Brown/062_1.stl 
mv 063.stl Brown/063_3.stl 
mv 064.stl Brown/064_1.stl 
mv 065.stl Brown/065_1.stl 
mv 066.stl Brown/066_1.stl 
mv 067.stl Brown/067_1.stl 
mv 068.stl Brown/068_1.stl 
mv 070.stl Brown/070_1.stl 

rm *.stl
