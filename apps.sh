#!/bin/bash

echo "Updating apt"

sudo apt-get update && apt-get upgrade

#select between options
select AppName in virtualbox-qt samba;

do

#In case app requires multiple things installed or dependencies
    case $AppName in
        "virtualbox")

    sudo apt-get install $AppName;
done
