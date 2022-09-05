#!/bin/bash
echo "Building 1830 Maps"
cd ../Maps
for i in *.scad; do
  echo "Building $i"
  openscad "$i" -o "${i%.scad}.stl"
done
