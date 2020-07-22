#!/usr/bin/env bash

# Temporary root directory to create and copy files into for zipping
rdir="colorimetric-luts_$(cat version.txt)"

# Create the directory and copy items into it
mkdir "$rdir"
cp -r "res"/* "$rdir"
cp -r "src/res"/* "$rdir"

# Zip the directory into the final file
zip -9 -X -r "${rdir##*/}.zip" "$rdir"
