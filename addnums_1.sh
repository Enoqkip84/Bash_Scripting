#!/bin/bash

printf "%-10s %-15s\n" "NUMBER" "SUM OF DIGITS"
printf "%-10s %-15s\n" "------" "-------------"


#read each number from nums.txt
while read number
do
  #set sum to 0 for each new number
  sum=0

  #loop through each digit in the number
  for (( i=0; i<${#number}; i++ ))
  do
     #extract a digit at a time
     digit=${number:$i:1}

     #add digit to sum
     sum=$((sum + digit))
  done

  #print the result
  #echo "The sum of the digits in $number - $sum"
    printf "Sum of digits in %-5s -  %s\n" "$number" "$sum"

  done < nums.txt


exit 0

