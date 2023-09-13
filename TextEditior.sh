#! /usr/bin/bash

echo "Wellcome to text count editior"



echo -e "Enter text to check : \c"
read text



echo -e "Enter filename to store the text : \c"
read fileName
if [ -f $fileName ]
then
if [ -s $fileName ]
then 
echo "$text" > "$fileName"
else
echo "$text" >> "$fileName"
fi
else
touch $fileName
echo "$text" > "$fileName"
fi



if [ ${#text} -ge 1 ]
then
echo "The Name of file is :- $fileName"
echo -e "The amount of line in file is : \c " ; wc -l $fileName
echo -e "The amount of words in file is : \c"; wc -w $fileName
echo -e "The amount of character in file is : \c "; wc -c $fileName


else
echo "Please write something!"
fi