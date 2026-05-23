#!/bin/bash

while true
do
     echo "Enter a three-digit code between 110 and 150:"
     read code

     #check for null inputs
     if [ -z "code" ]
     then
         echo "invalid input."
         continue
     fi

     #valid integer input only
     if ! [[ "code" =~^[0-9]+$ ]]
     then
         echo "invalid input"
         continue
     fi

     #validate range

     if [ "code" -ge 110 && "code" -le 150 ]
     then
     