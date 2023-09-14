#! /usr/bin/bash

echo -e "Enter the path to the folder : \c"
read folder


if [ -d $folder ]
then
echo -e "The amount of files in $folder is \c" ; ls $folder | wc -l 
else
echo "No directory with the name of $folder found"
fi