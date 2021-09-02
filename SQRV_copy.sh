#!usr/bin/bash
clear
# warna
h="\033[32;1m"
k="\033[33;1m"
bt="\033[34;1m"
m="\033[35;1m"
u="\033[37;1m"
b="\033[36;1m"
p="\033[39;1m"

# Tampilan
echo -e ""
toilet -f future   "  SQRV COPY" | lolcat
echo -e ""
sleep 1
echo -e $h"========================================="
sleep 1
echo -e $p "                 MENU                  |"
sleep 1
echo -e $h"========================================="
sleep 1
echo -e $b   "{01} Download copy of Termux           |"
sleep 1
echo -e $h"========================================="
sleep 1
echo -e $b   "{02} Restore copy of Termux            |"
sleep 1
echo -e $h"========================================="
sleep 1
echo -e $b   "{99} EXIT                              |"
sleep 1 
echo -e $h"========================================="
sleep 1

read -p   "{•} Number > " numb
echo -e ""
echo -e   "{•} Please wait....."
sleep 3
if [ $numb = "1" ]
then
clear
sleep 1
figlet Creating | lolcat
sleep 2
cd /data/data/com.termux/files
tar -cvzf /sdcard/Download/termux.tgz --owner=0 --group=0 home usr
clear
sleep 1
figlet Done | lolcat
sleep 2
bash SQRV_copy.sh
fi
if [ $numb = "2" ]
then
clear
sleep 1
figlet Creating | lolcat
sleep 2
cd /data/data/com.termux/files
tar -xvzf /sdcard/Download/termux.tgz
clear
sleep 1
figlet Done | lolcat
sleep 2
bash SQRV_copy.sh
fi
if [ $numb = "99" ]
then
sleep 1
sleep 3
figlet Thanks | lolcat
sleep 3
exit
fi
