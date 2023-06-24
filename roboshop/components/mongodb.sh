#!bin/bash
echo "Installing mongodb.."

COMPONENT=mongodb
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
echo -n "Configuring the ${COMPONENT} repo:"

# ```bash
# # curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo
# ```

# 1. Install Mongo & Start Service.

# ```bash
# # yum install -y mongodb-org
# # systemctl enable mongod
# # systemctl start mongod

# ```

# 1. Update Listen IP address from 127.0.0.1 to 0.0.0.0 in the config file, so that MongoDB can be accessed by other services.

# Config file:   `# vim /etc/mongod.conf`