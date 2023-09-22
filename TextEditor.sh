#! /usr/bin/bash

echo "Wellcome to text count editior"



echo -e "Enter text to check : \c"
read text



echo -e "Enter filename to store the text : \c"
read fileName
#To check its file or not
if [ -f $fileName ]
then
#To check file is empty or not
if [ -s $fileName ]
then 
#New text will be added
echo "$text" > "$fileName"
else
#New text will be appended
echo "$text" >> "$fileName"
fi
else
touch $fileName
echo "$text" > "$fileName"
fi


#To check some input given or not
if [ ${#text} -ge 1 ]
then
echo "The Name of file is :- $fileName"
echo -e "The amount of line in file is : \c " ; wc -l $fileName
echo -e "The amount of words in file is : \c"; wc -w $fileName
echo -e "The amount of character in file is : \c "; wc -c $fileName


else
echo "Please write something!"
fi