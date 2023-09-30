#!/bin/bash


#files=$(find "$1" -maxdepth 1 -type f -name "*.$2" && grep -h --no-filename -r "$3" "$1" | cut -d: -f1 && grep -h --no-filename -r "$1")

 

echo "$(grep -rn --include "*.$2" "$3" "$1" | sort -n)" | sed 's/  */ /g' | sed 's/:/ : /g' | sed 's/  / /g'










