<<Documentation
Name:G Sahithi
Date:28/02/2022
Description:script to convert string from lower to upper and upper to lower
sample input: ./upper_lower.sh file.txt
sample output:
1 - Lower to upper
2 - Upper to lower
Please select option:1
WHAT IS OS?
WHEN IS OS USED?

Documentation

#!/bin/bash/
if [ $# -eq 1 ] #checking if CLAs are paased or not
then
    if [ -f $1 ] #check if CLA is a file or not
    then
	if [ -s $1 ] #check if the file has content or not
	then

echo 1 - Lower to upper #prints the option1
echo 2 - Upper to lower #prints the option2
read -p "Please select the option : " num #read a number(1 or 2) from user based on which case label is choosed

case $num in #case statement with $num as variable

    1) 
	 cat $1 | tr [:lower:] [:upper:] #case in which the file is converted from lowercase to uppercase using tr cmd
	 ;;
    2)   cat $1 | tr [:upper:] [:lower:] #case in which the file is converted from uppercase to lowercase using tr command
	 ;;

    *)  echo "option doesn't exist" #statement to be printed if the user's option doesnt match with the given options
	 ;;

esac #ending the case statement
	 else
         echo Error : No contents inside the file. #statement to be printed if file has no content
         fi
     else
     echo Error : Please pass the file. #statement to be printed if file is not passed as CLA
     fi
else
    echo Error : Please pass the file name through command line. #statement to be printed if no CLA has been passed
fi
