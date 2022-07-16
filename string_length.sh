<<Documentation
Name:G Sahithi
Date:18/02/2022
Description:to print the length of each and every string using arrays
sample input:hello
sample output:Length of string (hello) - 5
Documentation

#!/bin/bash/
if [ $# -gt 0 ] #to check whether cla's are passed or not
then
    arr=($@) #assigning all cla's to an array
    for var in ${arr[*]} #loop to read all array elements(string)
    do 
    echo Length of string "($var)" - ${#var} #printing the length of string
    done
else
echo Error: Please pass the arguments through command-line.    #stmnt to print if no cla's are passed
fi

