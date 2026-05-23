#!/bin/bash

while true
do
    echo "Please enter an integer between 110 and 150 inclusive:"
    read code

    # check for empty input
    if [ -z "$code" ]
    then
        echo "The value provided is invalid, please try again."
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
        echo "Valid provided is valid"
        break
    else
        echo "The value provided is invalid. Please try again"
    fi
done

exit 0