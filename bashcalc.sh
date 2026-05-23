#!/bin/bash

if [ $# -ne 3 ]
then
    echo "Error: Exactly three arguments are required."
    echo "Usage: ./bashcalc.sh [a|b|c|d|e] integer integer"
    exit 1
fi

operator=$1
num1=$2
num2=$3

#validate integers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]]
    then
    echo "Error: First number must be an integer."
    exit 1
fi

if ! [[ "$num2" =~ ^-?[0-9]+$ ]]
    then
    echo "Error: Second number must be an integer."
    exit 1
fi

#calculation
case $operator in
a)
    result=$((num1 + num2))
    echo "Result: $num1 + $num2 = $result"
    ;;
s)
    result=$((num1 - num2))
    echo "Results: $num1 - $snum2 = $result"
    ;;
m) 
    result=$((num1 * num2))
    echo "result: $num1 * $num2 = $result"
    ;;
d)
    if [ "$num2" -eq 0 ]
    then
        echo "Error: cannot divide by zero"
        exit 1
    fi

    result=$((num1 / num2))
    echo "Result: $num1 / $num2 = $result"
    ;;

e) 
    result=$((num1 ** num2))
    echo "Result: $num1 ^ $num2 = $result"
    ;;

*) 
    echo "Error: Invalid operator."
    echo "Valid operators are:"
    echo "a = add"
    echo "s = subtract"
    echo "m = multiply"
    echo "d = divide"
    echo "e = exponentiate"
    exit 1
    ;;

esac

#successful termination
exit 0

