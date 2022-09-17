#!/bin/bash
echo "Building Tiles for $1"
./build_tiles.sh
cd "../$1/Scripts"
echo "Building Everything for $1"
./build_all.sh
