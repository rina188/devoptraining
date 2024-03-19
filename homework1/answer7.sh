#!/bin/bash

# Prompt the user for input
echo "Please Input Name:"
read inputName

# Check if the entered name exists
if [ ! -e "$inputName" ]; then
    echo "'$inputName' is not found as file/folder"
    exit 1
fi

if [ -f "$inputName" ]; then
    echo "$inputName is a regular file."
elif [ -d "$inputName" ]; then
    echo "$inputName is directory."
fi
