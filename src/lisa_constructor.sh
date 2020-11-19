#!/bin/bash
#
#       LISA Enviroment Constructor
#       2020.11.19 Team LISA
#

# Init and print information
echo "┌──────────────────────────────────────────────────┐"
echo "│                                                  │"
echo "│     ┳           ┳     ┏━━━━━━━┓    ┏━━━━━━━┓     │"
echo "│     ┃           ┃     ┃       ┃    ┃       ┃     │"
echo "│     ┃           ┃     ┃            ┃       ┃     │"
echo "│     ┃           ┃     ┗━━━━━━━┓    ┣━━━━━━━┫     │"
echo "│     ┃           ┃             ┃    ┃       ┃     │"
echo "│     ┃           ┃             ┃    ┃       ┃     │"
echo "│     ┃           ┃     ┃       ┃    ┃       ┃     │"
echo "│     ┗━━━━━━━    ┻     ┗━━━━━━━┛    ┻       ┻     │"
echo "│                                                  │"
echo "└──────────────────────────────────────────────────┘"
echo "Lisa Header enviroment constructor : version.1.0.0"
echo "System Shall : "$BASH
echo "System Shall version : "$BASH_VERSION
echo "System OS : "$OSTYPE
echo "User name : "$USERNAME
echo "[Warning] You must have curl."

# get docker code by https://get.docker.com
curl -sSL https://get.docker.com | sh

# change socket permission
sudo chmod 666 /var/run/docker.sock

# Get Mode
echo "Is this device Header node?(y/n) : "
read mode

if [ "Y" = $mode ] || [ "y" = $mode ]
then
    # Header node
    docker swarm init > token_info.txt
    echo "Check the token at token_info.txt"
else
    # Worker node
    echo "Press the token : "
    read token
    echo "Press the domain or IP : "
    read addr
    echo "Press the port number : "
    read port

    docker swarm join --token $token $addr:$port
fi

echo "Complete!"
