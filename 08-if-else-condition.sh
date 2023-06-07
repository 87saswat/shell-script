#!bin/bash

# ACTION=$1

# if [ "$ACTION" == "start" ]; then
#     echo -e "\e[31m Server starting \e[0m"
#     exit 0

# else 
#     echo -e "\e[33m Server is not running \e[0m"
#     exit 1    
# fi


VAR=$1

if [ "$VAR" -le 10 ]; then
    echo "Value is too small"
elif ["$VAR" -le 20 ]; then
    echo "Value is on medium range"
elif [ "$VAR" -le 100 ]; then
    echo "WHOAA !! a Big number"

else
    echo "Beyond our immagination"    
fi