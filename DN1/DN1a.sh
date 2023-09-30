#!/bin/bash -x

st_datotek=$(find "$1" -type f | wc -l)
echo "datoteke: $st_datotek"
skrite=$(find "$1" -type f -iname ".*" | wc -l)
echo "skrite: $skrite"
st_mehkih=$(find "$1" -type l | wc -l)
echo "mehke povezave: $st_mehkih"
trde_povezave=$(find "$1" -type f -links +1 | wc -l)
echo "trde povezave: $trde_povezave"
cevovodi=$(find "$1" -type p,s | wc -l)
echo "cevovodi: $cevovodi"
imeniki=$(find "$1" -mindepth 1 -type d | wc -l)
echo "imeniki: $imeniki"

