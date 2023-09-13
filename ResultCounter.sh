#! /usr/bin/bash


echo "Wellcome to Marks count"



echo -e "Enter all number with space: \c"
read -a marks

echo "Press s to get total sum of the number."
echo "Press p to get the persentage of the number."
echo "Press h to get the history of data."
echo -e "Make choice : \c"
read choice


if [ ${#marks[@]} -gt 1 ]
then
sum=0
for i in "${marks[@]}"
do
sum=$(expr $sum + $i )
done
case $choice in
"s" )
echo "Total number is $sum" ;;
"p" )
echo -e "Enter total number : \c"
read tnumber
persentage=$(awk "BEGIN { pc=100*${sum}/${tnumber}; i=int(pc) ; print (pc-i<0.5)?i:i+1}")
echo "The persentage is $persentage%.";;
"h" )
echo "The amount of total subject is ${#marks[@]}."
for i in "${marks[@]}"
do
echo "=> $i"
done ;;
* )
echo "Invalid Command"
esac
fi