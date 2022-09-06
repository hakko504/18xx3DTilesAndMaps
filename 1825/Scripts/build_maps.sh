#!/bin/bash

build_units() {
  find . -type f -name '1825 U*.scad' | xargs -t -I % openscad "%" -o "%.stl"
}
build_regions() {
  find . -type f -name '1825 R*.scad' | xargs -t -I % openscad "%" -o "%.stl"
}

echo "Building 1825 Maps"
cd ../Maps
openscad '1825 Full Map.scad' -o '1825 Full Map.stl' &
build_units &
build_regions &
wait
for i in *.scad.stl ; do
  mv "$i" "${i%.scad.stl}.stl"
done

