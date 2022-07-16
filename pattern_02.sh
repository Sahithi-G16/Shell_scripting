<<Documentation
Name:G Sahithi
Date:17/02/2022
Description:to read a number and generate a pattern
sample input:4
sample output:
1
2 3
4 5 6
7 8 9 10
Documentation

#!/bin/bash/
read -p "enter a number:" n #read a number from input
count=1 #initialise count with 1
for row in `seq $n`  #loop to print the no.of rows
do
    for col in `seq $row` #loop to print the no.of columns
    do
	echo -n "$count "  #to print the count
	count=$(($count+1)) #increment the count
    done
    echo #to print the row in nextline
done    
