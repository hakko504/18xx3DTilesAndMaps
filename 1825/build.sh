#!/bin/bash
pushd ../Tiles
./build.sh
popd
echo "Building 1825"
for i in *.scad
do
        echo "$i"
        openscad "$i" -o "${i%.scad}.stl"
done
mkdir -pv Maps/Units Maps/Parts
mv "1825 Full Map.stl" Maps/
cp "1825 R2 map.stl" "1825 R3 map.stl" Maps/Parts/
mv "1825 U1 map.stl" "1825 U2 map.stl" "1825 U3 map.stl" "1825 R1 map.stl" "1825 R2 map.stl" "1825 R3 map.stl" Maps/Units/
mv "1825 U1NW map.stl" "1825 U2NW map.stl" "1825 U3NW map.stl" "1825 R1N map.stl" Maps/Parts/
mv "1825 U1NE map.stl" "1825 U2NE map.stl" "1825 U3NE map.stl" Maps/Parts/
mv "1825 U1SW map.stl" "1825 U2SW map.stl" "1825 U3SW map.stl" "1825 R1S map.stl" Maps/Parts/
mv "1825 U1SE map.stl" "1825 U2SE map.stl" "1825 U3SE map.stl" Maps/Parts/

