#!/bin/bash
#prompt the user to create a directory name
read -p "Enter a directory name: " dir_name

#create submission files in the directory if the directory exists
if [ -d $dir_name ];then
        echo "Directory exists"
        cd $dir_name
        for i in 1 2
        do touch submissions$i.txt
        done
#if there is a file with the same name as the directory, this is the condition
elif [ -d "$dir_name" ];then
     echo "Error: directory $dir_name has the same name as the file you want to create, use another name"
#if there is a file called submission1.txt in the directory we created and  we want to check it's existence and create the remaining submission file
elif [ -f "$dir_name/submission1.txt" ];then
   echo "the file submission1.txt already exists in $dir_name "
elif [ -f "$dir_name/submission2.txt" ];then
   echo "the file submission2.txt already exists in $dir_name "
#if the directory doesn't exist
else
        echo "Directory doesn't exist"
        mkdir $dir_name
        cd $dir_name
        for i in 1 2;
        do touch submission$i.txt
        done

fi
