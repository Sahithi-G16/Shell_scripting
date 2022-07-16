<<Documentation
Name:G Sahithi
Date:17/02/2022
Description:arithmatic calculator using CLA 
sample input:2 + 3
sample output:5
Documentation

#!/bin/bash/
if [ $# -gt 0 ] #check if arguments are passed 
then
    if [ $# -eq 3 ] #check if no.of cla are equal to 3
    then
	case $2 in 
	    +)sum=`echo $1 + $3 |bc` #to perform addition of operands
		echo "$1 + $3 = $sum"
		;;
	    -)sub=`echo $1 - $3 |bc` #to perform subtraction of operands
		echo "$1 - $3 = $sub"
		;;
	    x)prod=`echo $1 \* $3 |bc` #to perform multiplication of operands
		echo "$1 x $3 = $prod"
		;;
	    /)div=`echo "scale=2;$1 / $3" |bc` #to perform division of operands
		echo "$1 / $3 = $div"
		;;
	    *)echo pass an operater #stmnt to print if no operater is passed
	esac
    else
	echo Error:please pass 3 arguments.   #stmnt to print when cla's are less than 3
	echo Usage:./arithmatic_calc.sh 2.3 + 6.7
    fi
else
    echo Error:please pass the arguments through command line. #stmnt to print if cla's are not passed
    echo Usage:/arithmatic_calc.sh 2.3 + 6.7
fi
