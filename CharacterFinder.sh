#! /usr/bin/bash




echo "Wellcome to the character checker"

echo -e "Enter your character : \c"
read char


if [ ${#char} = 1 ]
then
    case $char in
        [a-z] )
        echo "The character $char lies between a to z in small letters." ;;
        [A-Z] )
        echo "The character $char lies between A to Z in capital letters." ;;
        [0-9] )
        echo "The character $char lies between 0 to 9 in numeric numbers." ;;
        ? )
        echo "The character $char consis on special number." ;;
        * )
        echo "Invalid character. Please type again." ;;
    esac

else
echo "Please enter one character at one time."
fi