#! /usr/bin/bash


echo -e "Enter first number : \c"
read num1
echo -e "Enetr second number : \c"
read num2


if [[ -z $num1 && -z $num2 ]]
then
echo "Please enter some value."
else
if [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]
then
echo "The value of first number is $num1 and second number is $num2 before swaping."
num3="$num1"
num1="$num2"
num2="$num3"

echo "The value of first number is $num1 and second number is $num2 after swaping"
else
echo "Please provide a number."
fi
fi