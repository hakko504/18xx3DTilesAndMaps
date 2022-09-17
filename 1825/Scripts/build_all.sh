#!/bin/bash
echo "Building 1825"
./build_maps.sh &
./build_tiles.sh &
./build_tokens.sh &
wait
zip 1825.zip ../*/*.stl
