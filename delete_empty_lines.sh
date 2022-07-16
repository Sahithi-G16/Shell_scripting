<<Documentation
Name:G Sahithi
Description:to delete empty lines from a file
sample input:
hello

how
sample output:
hello
how
Documentation

#!/bin/bash/
if [ $# -eq 1 ] #check if cla's are passed or not
then
    echo Empty lines are deleted

    sed -i '/^[[:blank:]]*$/d' $1 #command to del empty lines(start(^) to end($))
 
    cat $1 #print the content of file
else
    echo Error: Please pass the file name through command line. #error stmnt to be printed if no clas are passed
fi
