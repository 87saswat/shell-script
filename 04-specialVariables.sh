#!/bin/bash

#SPECIAL VARIABLES GIVE SPECIAL PROPERTIES

# # HERE ARE THE EXAMPLES OF SPECIAL VARIABLES:
# $O TO $9, $?, $*, $#, $@, 

echo $0         #prints the script name we are currently executing
echo "Name of the script executed is $0"

# $1 to $9 can be used to give commandline argument

echo "Hello I am $1"
echo "I am learning $2"
echo " My trainer name is $3"