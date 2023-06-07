#!bin/bash

echo starting the script

ID=$(id -u)
echo $ID

if [$ID ne 0]; then
echo -e "\e[31m You need to be a root user and sudo previlage t run this script \e[0m"
exit 1

fi