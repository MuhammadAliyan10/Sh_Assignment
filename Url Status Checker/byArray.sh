#! /usr/bin/bash



echo "Welcome to Url status checker"

echo -e "Write all the url with the space : \c"
read -a url

if [ ${#url[@]} -ge 1 ]
then
for value in ${url[@]};
do
responce=$(curl -Is --max-time 10 "$value" | head -n 1 | awk '{print $2}')

if [[ $responce == "200" ]]
then
echo "The url($value) is working with the status of $responce"
else
echo "The url($value) is not working with the status of $responce"
fi
done


else
echo "Please provide some value!"
fi