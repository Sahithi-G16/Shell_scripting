<<Documentation
Name:G Sahithi
Date:21/02/2022
Description:to sort the numbers in ascending or descending order
sample input:-a 5 4 6 2 3 8 9 7 1
sample output:Ascending order of array is 1 2 3 4 5 6 7 8 9
Documentation

#!/bin/bash/
if [ $# -gt 2 ]  #check if clas are greater than 2
then 

arr=($@)    #assign clas to an array
arr=${arr[@]:1:$(($#-1))} #offset the arr to get new array from 2nd cla
last=${#arr[@]} #calculating length of array
len=$(($last-1)) #calculatin the no.of elements in the array
case $1 in #case stmnt to find the choice of user(-a/-d)
    -a)for i in `seq 1 $len` #loop for ascending order(starts from first element of array)
    do

	for j in `seq $(($i+1)) $len` #inner loop starts from 2nd element of array
	do
	    if [ ${arr[$i]} -gt ${arr[$j]} ] #to check if ith element is greater than jth element
	    then
		temp=${arr[$i]} #assign temp with ith value
		arr[$i]=${arr[$j]} #assign jth element to ith place
		arr[$j]=$temp #assign temp value to jth place(swapping done)

	    
	    fi
	done
       done
       echo -n "Ascending order of array is " 
       for i in `seq 1 $len` #loop to print the sorted order
       do
	   echo -n "${arr[$i]} " #prints each sorted element which is stored in ith place
       done
       echo
	;;
    -d)for i in `seq 1 $len` #loop for descending order
    do
	for j in `seq $(($i+1)) $len` #inner loop starts from 2nd element of array
	do
	    if [ ${arr[$i]} -lt ${arr[$j]} ] #to check if ith element is less than jth element
	    then
		temp=${arr[$i]} #assign temp with ith value
		arr[$i]=${arr[$j]} #assign jth element to ith place
		arr[$j]=$temp #assign temp value to jth place(swapping done)
	    fi #end the if conditional stmnt
	done 
    done
    echo -n "Descending order of array is " #stmnt to be printed
    for i in `seq 1 $len` #loop to print the sorted order
    do
	echo -n "${arr[$i]} " #prints each sorted element which is stored in ith place
    done
    echo
       ;;
    *)echo Error: Please pass the choice. #stmt to be printed if first cla is not -a or -d
      echo Usage: ./sorting.sh -a/-d 4 23 5 6 3
    ;;

esac	#ending case stmnt
else  
    echo Error:Please pass the argument through command line. #stmnt to be printed if no argument is passed 
    echo Usage: ./sorting.sh -a/-d 4 23 5 6 3
fi    #ending the first if conditinal stmnt
