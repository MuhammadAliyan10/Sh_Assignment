#! /usr/bin/bash



echo -e "Enter the file name : \c"
read fileName



if [ -z $fileName ]
then
echo -e "Please write file name : \c"
read fileName
else
if [ -f $fileName ]
then
echo -e "Enter the extension : \c" 
read extension
if [ -z $extension ]
then
echo "Please write extension!"
exit 1
fi
file_without_extension=${fileName%.*}
file_extension=${fileName##*.}
if [ $file_extension = "txt" -a "html" -a "sh" -a $extension ]
then
echo "File has already extension"
exit 1
else

newFile="$fileName.$extension"
mv $fileName $newFile
echo "The file $fileName renamed to $newFile"
fi
else
echo -e "File is not found.Do you want to create a new file with name(y/n) : \c"
read choice

if [ $choice = "y" -a "Y" ]
then
touch $fileName
echo -e "Enter the extension : \c" 
read extension
newFile="$fileName.$extension"
mv "$fileName" "$newFile"
echo "New file $newFile created"
else
exit 1
fi
fi
fi
