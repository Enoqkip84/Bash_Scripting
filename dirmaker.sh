#!/bin/bash

echo "Enter the name of the directory you want to create:"
read dirname

if [ -d "$dirname" ]
then
   echo "Sorry, $dirname already exists. Exiting..."
else 
    mkdir "$dirname"
    echo "Directory '$dirname' has been created successfully."
fi


exit 0



