<<Documentation
Name:G Sahithi
Date:02/03/2022
Description:Use a recursive function to print each argument passed to the function
sample input:./recursion.sh How are you? I am fine
sample output:
How 
are
you?
I
am
fine
Documentation

#!/bin/bash/
if [ $# -gt 0 ] #check if  CLA's are passed or not
then
    
    print_argument()    #creating a function
    {                   #body of function
	arr=($@)        #storing all function arguments into an array

	if [ $# -eq 0 ] #check if no.of CLA's is equal to zero
	then 
	    return    #if no.of CLA's equal to zero,then return the function
	fi            #ending the if condition

        echo ${arr[0]} #prints the first function argument
	
	len=$((${#arr[@]}-1)) #assigning the value of index of last element to a variable

	arr=($(echo ${arr[@]:1:$len})) #updating the array with next argument as first argument using offset

	print_argument ${arr[@]} #recursive function calling with updated array elements as arguments 
    
    }
    print_argument $@ #calling the function with CLA as arguments
else
    echo Error : Pass the arguments through command line.
    
fi #ending the if condition
