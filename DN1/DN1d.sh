#!/bin/bash

for vrstica in $(cat /etc/passwd); do
    user_id=$(echo $vrstica | cut -d: -f3)

    if [[ $user_id -gt 998 ]]; then

        user=$(echo $vrstica | cut -d: -f1)
        velikost=$(du --block-size=1M -s /home/$user | cut -f -1)
        
        if [[ $velikost -gt 1 ]]; then
            echo "${velikost}MB $user"
        fi
    fi
done

