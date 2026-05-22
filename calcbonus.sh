#!/bin/bash

echo "Enter the commission amount:"
read commission

bonus=0

if [ "$commission" -le 200 ]
then
    bonus=0
elif [ "$commission" -le 300 ]
then
    bonus=50
else
    bonus=100
fi

echo "The bonus applicable is: $bonus dollars"

exit 0


