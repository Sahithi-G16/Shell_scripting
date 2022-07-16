<<Documentation
Name:G Sahithi
Date:27/02/2022
Description:renaming the jpg files of a directory with new name passed through command line
sample input: ./rename_album.sh day_out
sample output:
 All .jpg files in current working directory is renamed as
 day_out001.jpg day_out002.jpg day_out003.jpg dayout_004.jpg dayout_005.jpg
Documentation

#!/bin/bash/
if [ $# -eq 1 ] #checking if CLA is passed or not
then
    arr=(`ls *.jpg`) #assigning all the .jpg files to an array

    for i in ${arr[@]} #loop which enlists all the elements of array
    do
       var=`echo $i | tr -cd [:digit:]` #deleting the alphabets from given filename
       mv $i "$1$var.jpg" #renaming the filename with CLA and .jpg extension
    done

     echo All .jpg files in current directory is renamed as #stmnt to printed after renaming
     echo *.jpg #prints all renamed .jpg files
 else
     echo Error : Please pass the prefix name through command line. #error stmnt to be printed if no CLAs are passed     
 fi
 
