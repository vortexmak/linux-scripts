#!/bin/bash
echo ***Updating Nemo Configuration settings***

#Get username of original user as script is being executed as root

USERNAME=$(logname)
#Set default user directories to custom location
xdg-user-dirs-update --set DOWNLOAD "/mnt/Files/Downloads"
xdg-user-dirs-update --set DOCUMENTS "/mnt/Files/Documents"
xdg-user-dirs-update --set MUSIC "/mnt/Files/Music"
xdg-user-dirs-update --set PICTURES "/mnt/Files/Pictures"
xdg-user-dirs-update --set VIDEOS "/mnt/Files/Videos"

#Changing owner of user directory config file to original user otherwise it's owned by root and inaccessible
chown $USERNAME:$USERNAME $HOME/.config/user-dirs.dirs
echo "\nUser directories updated"

#Add bookmarks to Bookmarks sidebar
cp "/mnt/Files/Software/Software Customizations/Linux/Scripts/Install/nemo_settings/bookmarks" $HOME/.config/gtk-3.0
echo "Bookmarks added"

#Remove User folders from home
rmdir ~/Documents
rmdir ~/Downloads
rmdir ~/Music
rmdir ~/Pictures
rmdir ~/Videos
echo "Duplicate User folders removed from home dir\n"
