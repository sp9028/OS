#!/bin/bash 

if [ "${@:$#}" = "-p" ]; then
    for var in "$@"
    do
        if [ "$var" = "-p" ]; then
            break
        else 
            datoteka=$(readlink /proc/$var/exe)
            velikost=$(du -b $datoteka | cut -f -1)
            echo $var $velikost $datoteka
        fi
    done
else
    for var in "$@"
    do
        datoteka=$(readlink /proc/$var/exe)
        velikost=$(du -b $datoteka | cut -f -1)
        echo $var $velikost
    done
fi

