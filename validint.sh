#!/bin/bash

while true
do
    echo "Enter a three-digit code between 110 and 150:"
    read code

    # check for empty input
    if [ -z "$code" ]
    then
        echo "Invalid input."
        continue
    fi

    # validate numeric input
    if ! [[ "$code" =~ ^[0-9]+$ ]]
    then
        echo "Invalid input"
        continue
    fi

    # validate range
    if (( code >= 110 && code <= 150 ))
    then
        echo "Valid input accepted"
        break
    else
        echo "Invalid input"
    fi

done

exit 0