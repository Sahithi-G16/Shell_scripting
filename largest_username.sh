<<Documentation
Name:G Sahithi
Date:27/02/2022
Description:to display the longest and shortest usernames on the system
sample input: ./largest_username.sh
sample output:
The Longest Name is : speed-dispatcher
The Shortest Name is : lp 
Documentation

#!/bin/bash/
arr=($(cat /etc/passwd |cut -d : -f1)) #assigning all the usernames of system to array
large=${arr[0]} #assigning the first username to a variable large
small=${arr[0]} #assigning the second username to a variable small

for i in ${arr[@]} #loop enlists all the usernames from array 
do 
   if [ ${#i} -gt ${#large} ] #condition to check if the given element length is greater than element in large
   then

       large=$i #updating the value in large by the current element of loop based on i

   elif [ ${#i} -lt ${#small} ] #condition to check if the given element length is smaller than element in small
   then

       small=$i #updating the value in small by the current element of loop based on i

   fi #ending the if condition
done
   echo The Longest Name is : $large #stmnt to print the longest username
   echo The Shortest Name is : $small #stmnt to print the shortest username
  

