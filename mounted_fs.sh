<<Documentation
Name:G Sahithi
Date:05/03/2022
Description:script to determine whether a given file system is mounted
sample input:./mounted_fs.sh /dev/sda2
sample output:
File-system /dev/sda2 is mounted on / and it is having 98% used space with 3298220 KB free.
Documentation

#!/bin/bash/

file=(`df -h |cut -d " " -f1`)                  #storing file systems names in array
available=(`df -h | tr -s " " |cut -d " " -f4`) #storing the available space of file system after squeezing the space after 1st field
used=(`df -h | tr -s " " |cut -d " " -f5`)      #storing the used space of file system after squeezing the space after 1st field
mounted=(`df -h | tr -s " " |cut -d " " -f6`)   #storing the mount point of filesystem after squeezing the space after 1st field

if [ $# -eq 1 ]  #checking if CLA's are passed or not
then 
     count=0    #initialise count with zero

     for i in ${file[@]} #loop which enlists all file system names
     do 

       	if [ $i = $1 ] 
       	then
             echo File-system "$i" is mounted on "${mounted[$count]}" and it is having "${used[$count]}" used space with "${available[$count]}" free.
       
	     exit #program terination       
        fi
	count=$(($count+1)) #incrementing the count value,inorder to track the index value

       done
         
       echo $1 is not mounted #stmnt to be printed if filesystem is not mounted
else
    echo Error : Please pass the name of the file-system through command line. #stmnt to be printed if no CLA is passed
   
fi
