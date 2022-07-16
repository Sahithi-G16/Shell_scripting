<<Documentation
Name:G Sahithi
Date:5/03/2022
Description:script to print contents of a directory without ls command
sample input:./output_ls.sh ~/ECEP
sample output:
/home/user/ECEP:
Linux_systems Advnc_C Linux_Internals Data_Structures MC
Documentation

#!/bin/bash/

if [ $# -gt 0 ] #checking if CLA's are passed or not
 then
       arr=($@) #storing all CLA's into an array

       for i in ${arr[@]} #for loop enlists all array elements
       do
            if [ -d $i ] #check if the CLA is a directory or not
	    then 
	         cd $i      #changing the directory to CLA
	         echo "$i:" #prints the CLA
	         echo *     #prints all the contents of the given path
	         cd `pwd`   #change the directory to present working directory
	         echo
	    else 
                  echo $0: Cannot access "'$i'" : No such a file or directory. #stmnt to be printed if passed CLA is not a directory
	    fi
       done     #end the for loop
else            #if no CLA is passed
    cd `pwd`    #change to present working directory
    echo `pwd`  #prints the path of present working directory
    echo *      #prints present working directory contents 

fi

