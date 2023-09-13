#! /usr/bin/bash

echo "Wellcome In file system"

echo "How my I help you?"

function menu(){

echo "Press 0 to print your working directory."
echo "Press 1 to get the list of file/folder in pwd."
echo "Press 2 to change your directory."
echo "Press 3 to make a file in your present directory."
echo "Press 4 to make a folder in your present directory."
echo "Press 5 to remove a folder in your present directory."
echo "Press 6 to enter the name of file/folder to check premitions."
echo "Press 7 to change the permitions of file/folder."
echo "Press 8 to read data in any file"
echo "Press 9 to check your processing"
echo "Press q to exit"
echo -e "Chose the opreation : \c"
read command
}

menu



if [[ $command >=0 && $command <=9 ]]
then 
 case $command in
 "0" )
  pwd 
  menu ;;
  "1" )
  ls ;;

  "2" )
    echo -e "Enter path to change : \c"
    read path
    if [ -e $path ]
    then
    cd $path
    else
    echo "No such a file/folder with the name $path found."
    fi ;;
  

    "3" )
    echo -e "Enter a file name : \c"
    read filename
    touch $filename
    echo "File with the name $filename created successfully"  ;;
  
    
    "4" )
    echo -e "Enter a folder name : \c"
    read folderName
    if [ -e $folderName ]
    then
    echo "Folder is already with this name exist.Please chose other name"
    else
    mkdir $folderName
    echo "Folder $folderName has been created successfully" 
    fi 
    menu ;;
    5 )
    echo -e "Enter the name of the folder : \c"
    read foname
    if [ -d $foname ]
    then
    rmdir -p $foname
    else
    rm $foname
    fi;;

    6 )
    echo -e "Enter file/folder name to check permitions : \c "
    read ffper
    if [ -e $ffper ]
    then 
    ls -l $ffper
    else
    echo "$ffper not found."
    fi ;;
  

    7 )
    echo -e "Enter the name of file/folder to change permition : \c ";
    read fifoper
    if [ -e $fifoper ]
    then
    echo -e "Enter only permition to change : \c"
    read permitions
    chmod $permition $fifoper
    else
    echo "Invaild file or folder name"
    fi ;;
  

    8 )
    echo -e "Enter the file name : \c"
    read readFile
    if [ -e $readFile ]
    then
    echo -e "The data in file is long/short(y/n) : \c"
    read dt
    if [ $dt = "y"]
    then
    less $readFile
    else
    cat $readFile
    fi
    else
    echo "$readFile is not found"
    fi ;;
   
    9 )
    top ;;
    "q" )
    exit ;;
 * )
 echo "Santax Error"
 esac
else
echo "Wrong Command.Please enter the right command."
fi

