#! /usr/bin/bash

echo -e "Enter the number of pyramid : \c"
read num

if [[ $num =~ ^[1-9]+$ ]]
then
for ((i=num;i>=1;i--))
do
for ((k=num;k>i;k--))
do
echo -ne " "
done
for ((j=1;j<=i;j++))
do
echo -ne "*"
done
for ((z=1;z<i;z++))
do
echo -ne "*"
done
echo
done
else
echo "Please write a number."
fi