#!/bin/bash

lcnt=0

while read -r line; 
do
	(( lcnt++ ))
	wcnt=`echo "$line" | wc -w`
	echo "Line $lcnt contains $wcnt words"
done < sentences.txt

exit 0