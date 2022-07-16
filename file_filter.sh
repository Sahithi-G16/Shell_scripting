<<Documentation
Name:G Sahithi
Date:23/02/2022
Description:to print the contents of file from given line number to next given no.of lines
sample input:./file_filter.sh 5 3 data.txt
sample output:
line number 5
line number 6
line number 7
Documentation


#!/bin/bash/
if [ $# -eq 3 ] #check if all clas are passed or not
then
    if [ -s $3 ] #check if the passed file has some content or not
    then
	linecount=`wc -l < $3` #storing the no.of lines in a file in a variable
	if [ $linecount -ge $(($1+$2-1)) ] #condition to check if no.of lines are greater than no.of lines to be printed
	then
	    cat $3| head -n $(($2+$1-1))| tail -n $2 #head and tail cmds to extract desired n.of lines of $3(file)
	else
	    echo Error: $3 is having only $linecount lines. file should have atleast $(($1+$2-1)) lines #error to be printed if line count is less than expected
	fi

     else
	 echo file has no content  #error to be printed if file($3) has no content
    fi
else 
    echo Error: arguments missing! #error to be printed if less than 3 arguments are passed
    echo Usage: ./file_filter.sh start_line upto_line filename
    echo For eg. ./file_filter.sh 5 5 "<file>"
fi 

