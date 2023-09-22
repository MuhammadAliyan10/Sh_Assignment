#! /usr/bin/bash

url=$1

if [ $# -eq 0 ]
then
echo "Please provide an argument."
elif [ $# -eq 1 ]
then
response=$(curl -Is --max-time 10 $url | head -n 1 | awk '{print $2}')
if [ "$response" == "200" ]
then
echo "The $url is working with the status $response."
else
echo "Provided $url is not working."
fi
else
echo "You can only pass one argument at on time."
fi