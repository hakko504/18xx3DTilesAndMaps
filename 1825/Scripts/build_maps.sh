#!/bin/bash

build_whole_map() {
  openscad '1825 Full Map.scad' -o '1825 Full Map.stl'
}

build_u1() {
  find . -type f -name '1825 U1*.scad' | xargs -t -I % openscad "%" -o "%.stl"
}
build_u2() {
  find . -type f -name '1825 U2*.scad' | xargs -t -I % openscad "%" -o "%.stl"
}
build_u3() {
  find . -type f -name '1825 U3*.scad' | xargs -t -I % openscad "%" -o "%.stl"
}

build_regions() {
  find . -type f -name '1825 R*.scad' | xargs -t -I % openscad "%" -o "%.stl"
}



echo "Building 1825 Maps"
cd ../Maps
build_whole_map &
build_u1
build_u2
build_u3
build_regions
wait
for i in *.scad.stl ; do
  mv "$i" "${i%.scad.stl}.stl"
done

