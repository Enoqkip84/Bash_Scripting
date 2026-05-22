#!/bin/bash

echo "Enter the name of the directory you want to create:"
read dirname

mkdir "$dirname"

echo "Directory '$dirname' has been created successfully."

ls

exit 0



