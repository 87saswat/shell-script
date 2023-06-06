#!/bin/bash

#SPECIAL VARIABLES GIVE SPECIAL PROPERTIES

# # HERE ARE THE EXAMPLES OF SPECIAL VARIABLES:
# $O TO $9, $?, $*, $#, $@, 

echo $0         #prints the script name we are currently executing
echo "Name of the script executed is $0"

# $1 to $9 can be used to give commandline argument

echo "Hello I am $1"    #saswat
echo "I am learning $2" # Cloud Devops
echo " My trainer name is $3" "Manu-Verma"


A=10
B=20
echo $*    # Going to printall the used variable in the script
echo $@    # same as $*
echo $?    # prints he exit code of the last command
echo $$    # prints the current process id of the process
echo $#    # prints the number of arguments


read -p "what is your name" name
echo Hello $name