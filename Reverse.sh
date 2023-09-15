#! /usr/bin/bash


echo -e "Enter number to reverse : \c"
read number

orignel=$number
reversed=0

if [[ $number =~ ^[0-9]+$ ]]
then
while [ $number -gt 0 ]
do
#it will get the last number(reminder)
reminder=$((number % 10))
#It will add the number on left side
reversed=$((reversed * 10 + reminder))
#It will remove the numeber which is recently added.
number=$((number / 10))
done

echo "The orignel number is $orignel"
echo "The reversed number is $reversed"

else
echo "Only number are alowed"
fi