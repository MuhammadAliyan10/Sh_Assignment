#! /usr/bin/bash



#Checks user want special character or not
echo -e "Include special character(y/n) : \c"
read choice

case $choice in
"y")
random_char="qwertyuiopasdfghjklzxcvbnm1234567890ASDFGHJKLPOIUYTREWQZXCVBNM!@#$%^&*|\/~+_" ;;
"n")
random_char="qwertyuiopasdfghjklzxcvbnm1234567890ASDFGHJKLPOIUYTREWQZXCVBNM" ;;
* )
echo "Invalid input."
exit 1
esac

#Calculate length of random character.
random_char_length=${#random_char}

#Inputs password lengths from user
echo -e "Enter the password length : \c"
read pass_length
result=""
#Checks its number or not
if [[ $pass_length =~ ^[0-9]+$ ]]
then
#Loops through password length 
for ((i=0;i<$pass_length;i++))
do
#Genrate a random number between 0 to length of random charcter.
random_number=$((RANDOM % $random_char_length))
#Its select a charcter of given index genrated by random number
result_char="${random_char:random_number:1}"
#The given charcter store in result variable
result="${result}${result_char}"
done
echo "Your password is :-"
echo $result
else
echo "Please provide a number."
fi
