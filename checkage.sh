#!/bin/bash

echo -e "Please enter your age: \n (You must be 18 or older to pass)"
read age

if [ "$age" -lt 18 ]
then
    echo "You shall not pass!"
else
    echo "Ok, you can pass"
fi

exit 0
