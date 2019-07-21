echo "
***Adding storage drives to fstab***"
echo '\n#Mounting data drives' >> /etc/fstab
echo "LABEL=Files /mnt/Files auto uid=vortex,gid=vortex,nosuid,nodev,x-gvfs-show 0 2" >> /etc/fstab
echo "LABEL=Archive /mnt/Archive auto uid=vortex,gid=vortex,nosuid,nodev,x-gvfs-show 0 2" >> /etc/fstab
echo "LABEL=Data /mnt/Data auto uid=vortex,gid=vortex,nosuid,nodev,x-gvfs-show 0 2" >> /etc/fstab
echo "Mount points added. Operation complete
"
