#! /usr/bin/bash


echo "Wellcome to Marks count"



echo -e "Enter all number with space: \c"
read -a marks

echo "Press s to get total sum of the number."
echo "Press p to get the persentage of the number."
echo "Press h to get the history of data."
echo -e "Make choice : \c"
read choice

#To ckeck some output is given or not
if [ ${#marks[@]} -gt 1 ]
then
sum=0
for i in "${marks[@]}"
do
#To sum the number
sum=$(expr $sum + $i )
done
case $choice in
"s" )
echo "Total number is $sum" ;;
"p" )
echo -e "Enter total number : \c"
read tnumber
#To get the persentage of the result
#persentage=$(awk "BEGIN { pc=100*${sum}/${tnumber}; i=int(pc) ; print (pc-i<0.5)?i:i+1}")
persentage=$(awk "BEGIN {printf \"%.2f\", ($sum / $tnumber * 100)}")
echo "The persentage is $persentage%.";;
"h" )
echo "The amount of total subject is ${#marks[@]}."
#To get the history
for i in "${marks[@]}"
do
echo "=> $i"
done ;;
* )
echo "Invalid Command"
esac
fi