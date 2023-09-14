#! /usr/bin/bash

echo "Welcome to url checker"


echo -e "Enter the path to the file : \c"
read file

if [ -e $file ]
then
if [ -s $file ]
then
while read -r url ;
do
responce=$(curl -Is --max-time 10 "$url" | head -n 1 | awk '{print $2}')
if [ "$responce" == "200" ]
then
echo "The url ( $url ) is working.Status :- $responce"
else
echo "The url ( $url ) is not working.Status :- $responce"
fi
done < "$file"

else
echo "No url found in the file!"
exit 1

fi
else
echo "$file not found."
fi