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
echo "Lisa Header Admin : version.1.0.0"
echo "System Shall : "$BASH
echo "System Shall version : "$BASH_VERSION
echo "System OS : "$OSTYPE
echo "User name : "$USERNAME

# change socket permission
sudo chmod 666 /var/run/docker.sock

# Loop
looper="T"
while [ $looper = "T" ]
do
    echo "Choose the menu : "
    echo "1. List of node"
    echo "2. Remove node"
    echo "3. Add node(start lisa_constructor)"
    echo "4. exit program"
    
    # Get Choice
    read ch
    if [ ch = "1" ]
    then
        docker node ls
    elif [ ch = "2" ]
        echo "Press node name(hostname) : "
        read name
        sudo docker node rm --force $name
    elif [ ch = "3" ]
        sh lisa_constructor.sh
    elif [ ch = "4" ]
        looper="F"
    else 
        clear
        echo "[Syntex Error]Please press the verify menu"
    fi
done
