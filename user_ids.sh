<<Documentation
Name:G Sahithi
Date:07/03/2022
Description:to count the number of users with user IDs between given range.
sample input:./user_ids.sh 0 100
sample output:Total count of user ID between 0 to 100 is : 3
Documentation

#!/bin/bash/
arr=(`cut -d ":" -f3 /etc/passwd`) #storing all user id's in an array
count=0                            #assigning count with zero

if [ $# -gt 0 ] #checking if CLA's are passed or not
then
     if [ $# -eq 2 ] #checking if no.of CLA's is equal to two
     then
	  if [ $1 -lt $2 ] #checking if 1st CLA is less than 2nd CLA
	  then

               for i in ${arr[@]} #for loop enlists all elements of array
               do
	          if [ $i -ge $1 -a $i -le $2 ] #check if array element is greater than 1st CLA and less than 2nd CLA
    	          then
	               count=$(($count+1)) #incrementing the count
                  fi
               done
                   echo Total count of user ID between $1 to $2 is: $count #printing the count

           else 
               echo Error: Invalid range.Please enter the valid range through CL. #stmnt to be printed if 2nd CLA is less than 1st CLA
           fi
     else
         echo Error: PLease pass 2 arguments through CL. #stmnt to be printed if only one argument is passed
	 echo Usage: ./user_ids.sh 100 200
     fi
else
    for i in ${arr[@]} #loop enlists all elements of array
    do
       if [ $i -ge 500 -a $i -le 10000 ] #checking if array element is greater than 500 and less than 1000
       then 
           count=$(($count+1)) #incrementing the count
       fi
     done
     echo Total count of user ID between 500 to 10000 is: $count #prints the count of no.of ids between 500 and 1000
fi
     
