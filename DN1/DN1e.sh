#!/bin/bash

export LANG=C.UTF-8

imenik2=$(ls "$2" | wc -l)
imenik1=$(ls "$1" | wc -l)

cp -n -r -u $1/* $2 
exit_status=$? 

if [[ $exit_status -eq 0 ]]; then
    new2=$(ls "$2" | wc -l)
    razlika=$(expr $new2 - $imenik2)
    if [[ $razlika -eq 2 ]]; then
        echo "Uspešno kopirani $razlika datoteki."
    fi
    if [[ $razlika -eq 1 ]]; then
        echo "Uspešno kopirana $razlika datoteka."
    fi
    if [[ $razlika -eq 0 ]]; then
        echo "Ni novih datotek."
    fi
    if [[ $razlika -gt 2 ]]; then
        echo "Uspešno kopiranih $razlika datotek."
    fi
fi



    
