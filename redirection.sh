<<Documentation
Name:G Sahithi
Date:28/02/2022
Description:Use pipes or redirection to create an infinite feedback loop
sample input: ./redirection.sh
sample output:
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello

.

.

.


Documentation

#!/bin/bash/

echo "Hai hello">> new_file.txt #appending the output of command to a file

tail -f new_file.txt>> new_file.txt | tail -f new_file.txt #the o/p of appended file is piped to tail with follow option to update and display the appended content


