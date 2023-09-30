#!/bin/bash
for pid in $(pgrep $1)
do 
    echo -n $pid" "
    txt=$(ps $pid)
    echo $txt | cut -d " " -f11-
done
