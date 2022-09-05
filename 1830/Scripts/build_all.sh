#!/bin/bash
echo "Building 1830"
./build_maps.sh &
./build_tiles.sh &
./build_tokens.sh &
wait
zip 1830.zip ../*/*.stl
