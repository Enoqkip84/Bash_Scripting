#!/bin/bash
#populate the array with folder names from foldernames.txt
mapfile -t newfolders < foldernames.txt

#loop through the array
for folder in "${newfolders[@]}"
do
    #check if the folder names does not exceed 14 characters

    if [ ${#folder} -le 14 ]
    then
       echo "Folder $folder has been created"
    else
        echo "Folder $folder exceeds 14 characters and will not be created"
    fi

done


exit 0