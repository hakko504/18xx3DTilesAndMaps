#!/bin/bash
echo "Building Tiles"
cd ../Tiles
for i in *.scad; do
  echo "Building $i"
  openscad "$i" -o "${i%.scad}.stl"
done
zip Tiles.zip *.stl
