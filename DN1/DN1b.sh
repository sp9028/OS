#!/bin/bash

for user in "${@:2}"; do
    setfacl -m u:"$user":rx "$1"
done
