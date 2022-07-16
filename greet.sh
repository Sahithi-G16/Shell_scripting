<<Documentation
Name:G Sahithi
Date:24/02/2022
Description:script to print greetings based on time
sample input: ./say_hello.sh
sample output:
Good Morning user,Have a nice day!
This is Wednesday 23 in February of 2022 (10:44:10 AM)
Documentation


#!/bin/bash/
hr=`date |cut -c12-13` #extracting only hours from date command 

user=`whoami`  #prints the current user

time=$(echo -n `date +%X`;echo -n " ";date +%p) #to print time with AM/PM using date command

day=`date +%A` #prints only day from date command output

date=`date |cut -d " " -f3` #prints only date from date command output

month=`date +%B` #prints the month from date command output

year=`date +%Y` #prints year from date command output

stmnt=`echo This is $day $date in $month of $year "($time)"` #stmnt to be printed if it passes any of the if-elif condition

if [ $hr -ge 5 -a $hr -lt 12 ] #check if hours are between 5am and 12pm
then
    echo Good Morning $user,Have a nice day! 
    echo $stmnt

elif [ $hr -ge 12 -a $hr -le 13 ] #check if hours are between 12pm and 1pm
then
    echo Good Noon $user,Have a nice day!
    echo $stmnt

elif [ $hr -ge 14 -a $hr -lt 17 ] #check if hours are between 1pm and 5pm
then
   echo Good Afternoon $user,Have a nice day!
   echo $stmnt 

elif [ $hr -ge 17 -a $hr -lt 21 ] #check if hours are between 5pm and 9pm
then
   echo Good Evening $user,Have a nice day!
   echo $stmnt 

 elif [ $hr -ge 21 -a $hr -lt 24 ] #check if hours are between 9pm and 5am
 then
     echo Good Night $user,Have a nice day!
     echo $stmnt
 elif [ $hr -ge 0 -a $hr -lt 5 ]
 then
     echo Good Night $user,Have a nice day!
     echo $stmnt

 fi #ending the if-elif conditional statement
 
