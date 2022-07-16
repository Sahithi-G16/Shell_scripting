<<Documentation
Name:G Sahithi
Date:18/02/2022
Description:to print chess board
sample input:2
sample output:
1
0 1
Documentation

#!/bin/bash/
for row in `seq 8` #loop to print the no.of rows
do
    for col in `seq 8` #loop to print the no.of columns
    do
	sum=$(($row + $col)) #sum of row and column
	if [ `echo $sum%2 |bc` -eq 0 ] #check if the sum is even or odd
	then
	    echo -e -n "\e[47m " "" #color code to print white
	else
	    echo -e -n "\e[40m " "" #color code to print black
	fi # end the if else condition
    done
    echo -e "\e[0m " "" #to make it normal
done    
