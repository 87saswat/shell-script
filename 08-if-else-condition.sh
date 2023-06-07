#!bin/bash

ACTION=$1

if ["$ACTION" == "start"]; then
    echo -e "\e[31m Server starting \e[0m"
    exit 0

else 
    echo -e "\e[33m Server is not running \e[0m"
    exit 1    
fi