#!/bin/bash
echo "Building Everything"
./build_other.sh
./build_tiles.sh
cd ..
ls 18*/Scripts/
pwd
for i in 18* ;do
    echo $i
    pushd $i/Scripts/
    ./build_all.sh
    popd
done


