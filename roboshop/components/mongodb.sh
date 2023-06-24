#!bin/bash
echo "Installing mongodb.."

COMPONENT=mongodb
LOGFILE="/tmp/${COMPONEMT}.log
ID=$(id -u)

if [ $ID -ne 0 ]; then
    echo -e "\e[31m This script is expected to run with sudo previlage \e[0m"
    exit 1 
fi

stat() {
    if [ $? -eq 0 ]; then
        echo -e "\e[32m Success \e[0m"
    else
        echo -e "\e[31m Failure \e[0m"
        exit 2    

    fi
}


#  Setup MongoDB repos.
echo -n "Configuring the ${COMPONENT} repo...:"


curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo
stat $?

echo -n "Install ${COMPONENT}..."
yum install -y mongodb-org &>> $LOGFILE
stat $?





