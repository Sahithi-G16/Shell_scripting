<<Documentation
Name:G Sahithi
Date:02/03/2022
Description:script to print system information using commands
sample input:./system_info.sh
sample output:
1.Currently logged users
2.Your shell directory
3.Home diretory
4.OS name & version
5.Current working directory
6.Number of users logged in
7.Show all available shells in your system
8.Hard disk information
9.CPU information
10.Memory information
11.File system information
12.Currently running process
Enter the choice : 2
Your shell directory is /bin/bash
Documentation

#!/bin/bash/

function sys_info()  #creating a function
{                #body of function

echo 1.Currently logged users #menu of options for display
echo 2.Your shell directory
echo 3.Home directory
echo 4.OS name "&" version
echo 5.Current working directory
echo 6.Number of users logged in
echo 7.Show all available shells in your system
echo 8.Hard disk information
echo 9.CPU information
echo 10.Memory Informations
echo 11.File system information
echo 12.Currently running process

read -p "Enter the choice :" num #reading an input number from user based on menu options

case $num in #case statement to be executed based on users input

    1) echo "The currently logged in user is $USER" #prints the no.of users logged using the environmental variable $USER
	;;
    2) echo "Your shell directory is $SHELL" #prints the shell directory using the environmental variable $SHELL
	;;
    3) echo "Home directory is $HOME" #prints the path of home directory using the environmental variable $HOME
	;;
    4)echo "OS name and version are `uname -o` and `uname -v`"  # cmd prints the name of OS and the kernel version
	;;
    5)echo "Current working directory is `pwd`" #prints the path of present working directory
	;;
    6)echo "Number of users logged in `who -q`" #prints the no.of users logged in info
	;;
    7)echo "Available shells in your system is `cat /etc/shells`" #prints all shells in the system
	;;
    8)echo "Hard disk information is `df`"  #prints the hard disk info
	;;
    9)echo "CPU information is `cat /proc/cpuinfo`" #command which prints the cpu info
	;;
    10)echo "Memory information is `cat /proc/meminfo`" #command which prints the memory info
	;;
    11)echo "File system informatio is `df`" #command which prints the file system info
	;;
    12)echo "Currently running process is `ps`" #prints the currently running process
	;;	
    *) echo Error : Invalid option,please enter valid option #error stmnt to be printed if the entered number doesn't match given options
	;;
esac #ends the case stmnt

read -p "Do you want to continue(y/n) ?" i #reading input from user whether to continue or not(yes/no)

     if [ $i = 'y' ] #if condition to check whether the input is 'y'
     then

     sys_info #recursive function call if at all user want to continue
     
     else
     return #if users input is 'n',then the function has to terminated
     fi 

} #closing body of function

sys_info #function call

    

 
   
