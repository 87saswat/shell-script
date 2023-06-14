#!bin/bash
COMPONENT=frontend
ID=$(id -u)
if [ $ID -ne 0 ] ; then
    echo -e "\e[31m This script is expected is run by a root user or with sudo previlage \e[0m"
    exit 1
fi   
stat() {
    if [ $1 -eq 0 ]; then
    echo -e "\e[32m success \e[0m"

else
    echo -e "\e[31m failed \e[0m"
    exit 2
fi
}

echo -n "Installing nginx...." 
yum install nginx -y &>> "/tmp/${COMPONENT}.log"
stat $?


echo -n "Downloading ${COMPONENT} component ...."
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
stat $?

echo -n "Performing cleanup...."
cd /usr/share/nginx/html
rm -rf * &>> "/tmp/${COMPONENT}.log"
stat $?

unzip /tmp/frontend.zip &>> "/tmp/${COMPONENT}.log"



# systemctl enable nginx
# systemctl start nginx
# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
#Deploy in Nginx Default Location.
# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf
