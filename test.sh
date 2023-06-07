#!bin/bash

echo starting the script

# SYNTAX OF case
# case $VAR in 
#     opt1) command1 ;;
#     opt2) command2 ;;
# esac


ACTION=$1    # THE VALUE OF ACTION I WANT TO TAKE FROM THE COMMAND LINE

case $ACTION in
    start)
        echo "Starting the server"
        ;;
    stop)
        echo "Stopping the server"
        ;;
   
        
    *)
        echo "the options are start, stop and exit only" 
        ;;

esac        


