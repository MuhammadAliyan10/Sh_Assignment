#! /usr/bin/bash

echo -e "Enter the number of pyramid : \c"
read num



if [[ $num =~ ^[0-9]+$ ]]
then
#For row

for ((i=1;i<=num;i++))
do
#For space
for ((k=i;k<=num;k++))
do
echo -ne " "
done
#Part one of the pyramid
for ((j=1;j<=i;j++))
do
echo -ne "*"
done
#Part 2 of the pyramid
for ((z=1;z<i;z++))
do
echo -ne "*"
done
#For new line
echo
done
else
echo "Please write a number."
fi