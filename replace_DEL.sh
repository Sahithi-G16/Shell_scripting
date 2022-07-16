<<Documentation
Name:G Sahithi
Date:9/03/2022
Description:script to replace 20% lines in a C file randomly and replace it with the pattern 
sample input:./replace_DEL.sh main.c
sample output:
before replacing
#include <stdio.h>
int main()
{
   printf("Hello world\n");
}
after replacing
#include <stdio.h>
int main()
{
<-----Deleted------>
}
Documentation

#!/bin/bash/
if [ $# -eq 1 ] #checking if CLA is equal to one 
then
    if [ -f $1 ] #checking if the CLA is file or not
    then
	if [ -s $1 ] #checking if the file has content or not
	then
	     count=`wc -l<$1` #indirecting the no.of lines in to count variable 
      	     if [ $count -ge 5 ] #checking if the file has greater than five lines
	     then
		 
		  line=$(($count*20/100)) #calculating the 20% of total lines of a given file and storing in a variable 
		  echo $line
	          arr=(`shuf -i 1-$count -n $line`) #array to store the randomly selected line numbers of file 
	      
	          for i in ${arr[@]} #array which enlists the random line numbers
	          do
		     sed -i "$i s/.*/<-------deleted-------->/" $1 #replacing the random line with pattern <--deletd--> in the given file
		  done
		  cat $1
              else
                   echo The given file must have atleast 5 lines. #stmnt to be printed if file has less than 5 lines.
              fi
         else
             echo Error : $1 is empty file.So cant replace the string. #stmnt to be printed if $1 has no content
         fi
     else 
         echo Error : No such a file. #stmnt to be printed if the file passed as CLA doesn't exist
     fi
else
    echo Error : Please pass the file name through command line. #stmnt to be printed if no CLA is passed
fi


