#! /usr/bin/bash




echo "Calculator"

echo -e "Enter first number : \c"
read num1
echo -e "Enter second number : \c"
read num2


if [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]
then
    echo -e "Chose opreator(+ for addition, - for subtraction, * for multiply, / for divide) : \c"
    read opr
    if [[ $opr = "+" || $opr = "-" || $opr = "*" || $opr = "/" ]]
    then
    case $opr in
    "+" )
    echo "The answer is "$(expr $num1 + $num2 ) ;;
       
    "-" )
    echo "The answer is "$(expr $num1 - $num2 ) ;;
        
    "*" )
    echo "The answer is "$(expr $num1 \* $num2 ) ;;
       
    "/" )
    echo "The answer is" $(expr $num1 / $num2 ) ;;
    * )
    echo "Invalid input." ;;
    esac
    else
    echo "Please enter right opreater or chose between +, -, *, /."
    fi
else
echo "Please chose a number not string or other character."
fi
