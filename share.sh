#!/bin/bash

#Checking if Samba is installed
if dpkg -s samba =1 then
 sudo apt install samba

#Display version
echo Samba installed
smbstatus --version

#Update admin user password
smbpasswd

#Create read only account

#Ask for read only account name

#Update read only user password

#Share folders

#net usershare add <Share Name> <Target> "<comments>" <username1>:F,<username2>:R [guest_ok=y]
# <username> can be 'Everyone' or local user name
# Control type : F - Full, R - Read only

net usershare add Documents /mnt/Files/Documents "Documents folder" vortex:F
net usershare add Downloads /mnt/Files/Downloads "Downloads folder" Everyone:R,vortex:F guest_ok=y
net usershare add Pictures /mnt/Files/Pictures "" vortex:F
net usershare add Library /mnt/Files/Library "" vortex:F
net usershare add Pictures /mnt/Files/Pictures "" vortex:F
net usershare add Software /mnt/Files/Software "" Everyone:R,vortex:F guest_ok=y
net usershare add Music /mnt/Files/Music "" Everyone:R,vortex:F guest_ok=y
net usershare add Videos /mnt/Files/Videos "" Everyone:R,vortex:F guest_ok=y

echo "Shared folders added"



#Updating
