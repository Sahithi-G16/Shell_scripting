<<Documentation
Name:G Sahithi
Date:21/02/2022
Description:to rename file/directory in lower/upper case letters
sample input:
ls 
File.txt MyScript.SH MyFile007.txt dir/ Assign/ newfolder/
sample output:
ls
file.txt myscript.txt myfile007.txt DIR/ ASSIGN/ NEWFOLDER/

Documentation



#!/bin/bash
arr=(`ls`) #assigning the list of files and dir to array

for i in ${arr[@]} #for loop to enlists each element of array
do
    if [ -f $i ] #condition to check if the element is file
    then
    var=`echo $i| tr [:upper:] [:lower:]` #changing the filename from upper to lower case using tr command
    mv $i $var #renaming the file permanently to lowercase using mv command

     elif [ -d $i ] #condition to check if the element is directory
     then
    var=`echo $i| tr [:lower:] [:upper:]` #changing the dir name from lowercase to uppercase using tr command
    mv $i $var #renaming the file permanently to uppercase using mv command
else
    echo $i #print the element as it is if its not a file or dir

     fi #ending if conditional stmnt
 done
 echo "Files are renamed in lowercase and directories are renamed in uppercase" #stmnt to be printed while executing the file
