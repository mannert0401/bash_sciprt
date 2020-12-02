#! /bin/bash

echo -e "\n=== Current Default kernel : `sudo grub2-editenv list | awk '{print $3}'` ==="

echo -e "\n=== kernel list ==="
echo -e "`sudo grep  ^menuentry /boot/grub2/grub.cfg | cut -d "'" -f2 | grep CentOS | awk '{print NR ":" $3}'`"
echo "=== Select kernel ==="
read -p "Default Kernel number :" KER
sudo grub2-set-default "`sudo grep ^menuentry /boot/grub2/grub.cfg | cut -d "'" -f2 | grep CentOS | head -n $KER | tail -1`"
