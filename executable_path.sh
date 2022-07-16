<<Documentation
Name:G Sahithi
Date:09/03/2022
Description:displaying the total no.of executable files in each directory of environmental variable PATH
sample input:./executable_path.sh
sample output:
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 5
Total - 2099
Documentation
#!/bin/bash/
arr=($(printenv PATH |tr : \\n)) #storing all paths of directories from env variable PATH in an array using tr command
sum=0                            #initialising sum with zero

      for i in ${arr[@]} #for loop enlists all the array elements
      do  
         if [ -d $i ]  #checking if the element is a directory or not
         then 
              cd $i    #changing the directory to given array element
	      arr2=($(ls $i))    #storing all the files of directory(element of arr) in to a 2nd array 
              count=0            #initialising count with zero

              for j in ${arr2[@]} #for loop enlists all files in the given directory path
              do
                 if [ -x $j ] #checking if the file is executable or not
	         then
	              count=$(($count+1)) #incrementing the count
	         fi
              done

              echo Current dir: $i #stmnt to print the current directory
              echo current count: $count #stmnt to print the total count of executables in each path
              sum=$(($sum+$count)) #incrementing the sum after each iteration
          fi
       done
           echo Total - $sum #prints the total number of executables in all directory

