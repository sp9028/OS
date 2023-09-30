#!/bin/bash

while true
do
    read -p "Vnesite ime procesa: " proces
    pidof "$proces" > /dev/null && echo "OBSTAJA" || echo "-"
done
