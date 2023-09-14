#! /usr/bin/bash


echo -e "Enter number to print the table : \c"
read number

#To check its number or not
if [[ "$number" =~ ^[0-9]+$ ]]
then

for i in {1..10}
do
result=$(( number * i ))
echo "$number * $i =  $result"
done
else
echo "Please write the write number!"
fi