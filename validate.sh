#!/bin/bash

if [ $# -ne 2 ]
then
    echo "validation has failed"
    exit 1
fi

filename=$1
number=$2

if [ ! -f "$filename" ]
then
    echo "validation has failed"
    exit 1
fi

if [[ ! "$number" =~ ^[0-9]+$ ]]
then
    echo "validation has failed"
    exit 1
fi

permissions=$(stat -c "%A" "$filename")

echo "-----------------------------------"
printf "%-20s %-15s\n" "FILE" "PERMISSIONS"
echo "-----------------------------------"
printf "%-20s %-15s\n" "$filename" "$permissions"
echo "-----------------------------------"

exit 0


