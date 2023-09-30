#!/bin/bash 
args=$(echo "$@" | cut -d" " -f2-)
sorted=$(printf '%s\n' "$@" | sort)
for var in $sorted
do
    if [ "$var" = "$1" ]; then
        continue
    else
        podatki=$(echo $(grep -Po '(?<='$var' )[0-9]+' $1))
        i=0
        total=0
        for st in $podatki 
        do
            total=$(expr $total + $st)
            i=$(expr $i + 1)
        done
    echo $var $(expr $total / $i)
    fi
done
