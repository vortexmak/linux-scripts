#!/bin/bash

#Assigns the original users login name who called the script to variable, instead of root since scripts are executed with sudo
USERNAME=$(logname)

echo "
***Making entries in crontab for file sync***"

# minute hour day month dayofweek command
#export DISPLAY:0 sets current display for terminal


# Will list existing crontab for appending and will send error output to null. Will then pipe standard input to crontab file for $USERNAME

echo "Daily at 11:30 pm"
(crontab -l -u $USERNAME 2>/dev/null; echo "30 23 * * * export DISPLAY=:0 && gnome-terminal -e "/mnt/Files/Software/Software\ Customizations/Linux/Scripts/rsync_backup_daily.sh"") | crontab -u $USERNAME -

echo "Weekly on Sat at 3:00 pm
"
(crontab -l -u $USERNAME 2>/dev/null; echo "0 15 * * 6 export DISPLAY=:0 && gnome-terminal -e "/mnt/Files/Software/Software\ Customizations/Linux/Scripts/rsync_backup.sh"") | crontab -u $USERNAME -
