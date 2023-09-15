#! /usr/bin/bash


echo -e "Enter a number between 1 to 100 : \c"
read number
guessNumber=$((RANDOM % 100 + 1))
try=0



if [[ $number =~ ^[0-9]+$ ]]
then
while true
do
if [ $number = $guessNumber ]
then
((try++))
echo "You won.You won the game in $try guess."
break
elif [ $number -gt $guessNumber ]
then
((try++))
echo "The number is higher then guess number."
echo -e "Enter a number between 1 to 100 : \c"
read number
elif [ $number -lt $guessNumber ]
then
((try++))
echo "The number is less then guess number."
echo -e "Enter a number between 1 to 100 : \c"
read number
else
echo "Invalid number"
break
fi
done
else
echo "Only numbers are alowed."
fi