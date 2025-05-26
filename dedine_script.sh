#!/bin/bash

# Prompt the user to enter a directory name
read -p "Enter your a directory name: " direct

# Defining submission1.txt and submission2.txt
file1=submission1.txt
file2=submission2.txt

# Use of if conditions
if [ -f "$direct" ]; then
    echo "Error: $direct exists as a file!"
elif [ -d "$direct" ]; then
    echo "Directory $direct exists!"
    touch "$direct/$file1"
    touch "$direct/$file2"
elif [ -f "$direct/$file1" ]; then
    echo "The file $file1 exists in the $direct"
elif [ -f "$direct/$file2" ]; then
    echo "The file $file2 exists in the $direct"
elif [ ! -d "$direct" ]; then
    echo "Directory $direct doesn't exist"
    mkdir "$direct"
    touch "$direct/$file1"
    touch "$direct/$file2"
else
    echo "Well done"
fi
