#!/bin/bash
echo "Building Other"
cd ../Other
for i in *.scad; do
  echo "Building $i"
  openscad "$i" -o "${i%.scad}.stl"
done
zip Other.zip *.stl
