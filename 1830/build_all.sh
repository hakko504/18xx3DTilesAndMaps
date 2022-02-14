#!/bin/bash
pushd ../Tiles
./build.sh
popd
echo "Building 1830"
for i in *.scad
do
	echo "$i"
	openscad "$i" -o "${i%.scad}.stl"
done
mkdir Yellow || rm -f Yellow/*
mkdir Green || rm -f Green/*
mkdir Brown || rm -f Brown/*
mkdir Red || rm -f Red/*
mkdir Fixed || rm -f Fixed/*
mkdir Tokens || rm -f Tokens/*
mkdir Maps || rm -f Maps/*

mv 1830*.stl Maps/
mv BO.stl BM.stl CO.stl CPR.stl Eire.stl NYC.stl NYNH.stl PRR.stl Tokens/
mv A09.stl B24.stl F02.stl I01.stl K13.stl Red/
mv A17.stl C15.stl D02.stl D24.stl E09.stl F06.stl F24.stl H12.stl I19.stl K15.stl Fixed/
mv D10.stl E05.stl E11.stl E23.stl G19.stl H18.stl I15.stl Yellow/
cp ../Tiles/001.stl ./Yellow/001_1x.stl
cp ../Tiles/002.stl ./Yellow/002_1x.stl
cp ../Tiles/003.stl ./Yellow/003_2x.stl
cp ../Tiles/004.stl ./Yellow/004_2x.stl
cp ../Tiles/007.stl ./Yellow/007_4x.stl
cp ../Tiles/008.stl ./Yellow/008_8x.stl
cp ../Tiles/009.stl ./Yellow/009_7x.stl
cp ../Tiles/055.stl ./Yellow/055_1x.stl
cp ../Tiles/056.stl ./Yellow/056_1x.stl
cp ../Tiles/057.stl ./Yellow/057_4x.stl
cp ../Tiles/058.stl ./Yellow/058_2x.stl
cp ../Tiles/069.stl ./Yellow/069_1x.stl
cp ../Tiles/014.stl ./Green/014_3x.stl
cp ../Tiles/015.stl ./Green/015_2x.stl
cp ../Tiles/016.stl ./Green/016_1x.stl
cp ../Tiles/018.stl ./Green/018_1x.stl
cp ../Tiles/019.stl ./Green/019_1x.stl
cp ../Tiles/020.stl ./Green/020_1x.stl
cp ../Tiles/023.stl ./Green/023_3x.stl
cp ../Tiles/024.stl ./Green/024_3x.stl
cp ../Tiles/025.stl ./Green/025_1x.stl
cp ../Tiles/026.stl ./Green/026_1x.stl
cp ../Tiles/027.stl ./Green/027_1x.stl
cp ../Tiles/028.stl ./Green/028_1x.stl
cp ../Tiles/029.stl ./Green/029_1x.stl
cp ../Tiles/053.stl ./Green/053_2x.stl
cp ../Tiles/054.stl ./Green/054_1x.stl
cp ../Tiles/059.stl ./Green/059_2x.stl
cp ../Tiles/039.stl ./Brown/039_1x.stl
cp ../Tiles/040.stl ./Brown/040_1x.stl
cp ../Tiles/041.stl ./Brown/041_2x.stl
cp ../Tiles/042.stl ./Brown/042_2x.stl
cp ../Tiles/043.stl ./Brown/043_2x.stl
cp ../Tiles/044.stl ./Brown/044_1x.stl
cp ../Tiles/045.stl ./Brown/045_2x.stl
cp ../Tiles/046.stl ./Brown/046_2x.stl
cp ../Tiles/047.stl ./Brown/047_1x.stl
cp ../Tiles/061.stl ./Brown/061_2x.stl
cp ../Tiles/062.stl ./Brown/062_1x.stl
cp ../Tiles/063.stl ./Brown/063_3x.stl
cp ../Tiles/064.stl ./Brown/064_1x.stl
cp ../Tiles/065.stl ./Brown/065_1x.stl
cp ../Tiles/066.stl ./Brown/066_1x.stl
cp ../Tiles/067.stl ./Brown/067_1x.stl
cp ../Tiles/068.stl ./Brown/068_1x.stl
cp ../Tiles/070.stl ./Brown/070_1x.stl
zip -v ../1830.zip Yellow/* Green/* Brown/* Red/* Fixed/* Tokens/* Maps/*
