#!/bin/bash
echo "Building Tiles"
for i in *.scad
do
	echo "${i%.scad}"
	openscad "$i" -o "${i%.scad}.stl"
done
