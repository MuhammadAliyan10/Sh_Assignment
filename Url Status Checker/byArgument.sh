#! /usr/bin/bash


if [ $# -ne 1 ]
then
echo "You can only pass one url at one time!"
exit 1
elif [ $# -lt 1 ]
then
echo "Please write something!"
exit 1
fi

url="$1"

responce=$(curl -Is "$url" | head -n 1)


if [[ "$responce" == "200 OK" ]]
then
echo "Given url($url) is working."
echo "The status is $responce"
exit 0
else
echo "Failed to execute the url($url)."
echo "The status is $responce."
exit 1
fi