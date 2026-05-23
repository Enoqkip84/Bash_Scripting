#!/bin/bash

result=$(echo "$1 + $2"| bc)

printf "%.2f\n" "$result"

exit 0