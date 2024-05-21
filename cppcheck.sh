#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <FILE.cpp>"
    exit 1
fi

FILE=$1

# Check if the file exists
if [ ! -e "$FILE" ]; then
    echo "$FILE does not exist."
    exit 1
fi


#Run cppcheck
cppcheck --enable=warning,style --suppress=missingIncludeSystem $FILE  2>  $FILE.cppcheck