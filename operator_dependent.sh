<<Documentation
Name:G Sahithi
Date:27/02/2022
Description:script to perform arithmatic operation on digits of a number
sample input: ./operation_dependent.sh 1234+
sample output: Sum of digits = 10
Documentation

#!/bin/bash/
if [ $# -eq 1 ] #checking if cla is passed or not
then
            var=$1 #storing the CLA in variable
            op=${var: -1} #seperating the last element of CLA and storing in a variable
            len=${#var} #finding the length of CLA in a variable
            len2=$(($len-1)) #performing the len-1 to find the last element index
            len3=$(($len-2)) #performing the len-2 to find the second last element index 
            firstdigit=${var:0:1} #storing the first element of CLA in a variable
	    seconddigit=${var:1:1} #storing the second element of CLA in a variable
case $op in  
            +)
                   sum=0 #initialise sum with 0
                   for i in `seq 1 $len2` #loop to run till the last but one element of array
                   do
                      sum=$(($sum + $firstdigit)) #operation to perform sum of digits
                      firstdigit=${var:i:1} #updating the first digit based on i value
                   done
                   echo Sum of digits = $sum #prints the sum of digits
                   ;;
            x) 
                  mul=1 #initiaise mul with 1
                  for i in `seq 1 $len2` #loop to run till the last but one element of array
                  do
	             mul=$(($mul * $firstdigit)) #operation to perform multiplication
	             firstdigit=${var:i:1} #updating the first digit based on i value
                  done
                  echo Multiplication of digits = $mul #prints the product of digits
                  ;;
   
           -)
                 
                  sub=$(($firstdigit-$seconddigit)) #performing subtraction of first and second digits of array
                  for i in `seq 2 $len3` #loop runs from third element to last but one element of array
                  do
	          seconddigit=${var:i:1} #updating the second digit based on i value
                  sub=$(($sub - $seconddigit)) #operation to perform subtraction
                  done
                  echo Subtraction of digits = $sub #prints the difference of digits
                  ;;
            /)
                 
                  div=$(echo "scale=4;$firstdigit / $seconddigit" | bc) #performing division of first and second 
                  for i in `seq 2 $len3` #loop running from third element to last but one element of array
                  do
	          seconddigit=${var:i:1} #updating the value of second digit
	          div=$(echo "scale=4;$div / $seconddigit" |bc) #operation to perform division 
                  done
                  echo Division of digits = $div #prints the quotient by performing division on digits of CLA
                  ;;
             *) echo Error: Operator missing or invalid operator,please pass operator as last digit "(+,-,x,/)" #stmnt to be printed if no operator is passed	  
		  ;;
    esac
else
    echo Error : Please pass the arguments through CL. #error stmnt to be printed if no arguments are passed
    echo Usage : ./operator_dependent.sh 2345+
fi    #ending the if-else conditonal statements.

