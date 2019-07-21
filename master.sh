#!/bin/bash

clear

echo "1. fstab - Make fstab entries
2. apps - Update software repostiories with ppas and install apps
3. share - Share all folders with separate read and write account access
4. sync - Setup file sync for backup daily and weekly to external drive
5. nemo_settings - Customize Nemo configuration
6. test - Run test script

"

# Set PS3 prompt for select command
PS3="Select option number: "

#Quit selection for select command
QUIT="Quit this script"

#select between options
select ScriptName in fstab apps share sync nemo_settings test;

do
    sudo ./$ScriptName.sh
done
