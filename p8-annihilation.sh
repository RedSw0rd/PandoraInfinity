#!/bin/bash
###################################################################
# PANDORA INFINITY - REDSWORD CYBER SECURTY
###################################################################

#
reset="\033[0m";
red='\033[0;31m'
purple='\033[0;35m'
lpurple='\033[1;35m'
cyan='\033[0;36m'
lightcyan='\033[1;36m'
white='\033[1;37m'
green='\033[0;92m'
fgcyan="\033[38;5;51m";
fgpurple1="\033[38;5;92m";
fgpurple2="\033[38;5;13m";
fgred="\033[38;5;9m";
fggray="\033[38;5;240m";
fglightgray="\033[38;5;245m";
bgpurple="\033[48;5;93m";
bgcyan="\033[48;5;51m";
bgdark="\033[48;5;233m";

STATUS_OK="\r\t\t\t\t\t\t\t\t\t\t\t\t     $white[$green OK $white]$fglightgray"
STATUS_KO="\r\t\t\t\t\t\t\t\t\t\t\t\t     $white[$red K0 $white]$fglightgray"
T=$(date +"%d%m%y-%s")

echo -ne "$fgcyan""___________________________________________________________________________________________________________\n"
echo -ne "$bgpurple                                                                                                           $reset\n"
echo -ne "$bgpurple$fgcyan                                    W E L C O M E    C O M M A N D E R                                     $reset\n"
echo -ne "$bgpurple                                                                                                           $reset\n"
echo ""
echo ""
echo -e "$purple  ______ _______ _______ ______  _______ ______  _______    _ _______ _______ _ _______ _ _______ _     _"
echo -e "$lpurple (_____ (_______|_______|______)(_______|_____ \(_______)  | (_______|_______) (_______) (_______) |   | |"
echo -e "  _____) )______ _     _ _     _ _     _ _____) )_______   | |_     _ _____  | |_     _| |   _   | |___| |"
echo -e "$cyan |  ____/  ___  | |   | | |   | | |   | |  __  /|  ___  |  | | |   | |  ___) | | |   | | |  | |  |_____  |"
echo -e " | |    | |   | | |   | | |__/ /| |___| | |  \ \| |   | |  | | |   | | |     | | |   | | |  | |   _____| |"
echo -e "$lightcyan |_|    |_|   |_|_|   |_|_____/  \_____/|_|   \_|_|   |_|  |_|_|   |_|_|     |_|_|   |_|_|  |_|  (_______|"
echo ""
echo -ne "$fggray""                ____________________________________________________________________________\n"
echo ""
echo -e "                   $fggray[$cyan \033[4mP\033[24m""$fggray""roactive $cyan \033[4mH\033[24m""$fggray""acking $cyan \033[4mA\033[24m""$fggray""nd $cyan \033[4mN\033[24m""$fggray""etwork $cyan \033[4mT\033[24m""$fggray""actical $cyan \033[4mO\033[24m""$fggray""perations $cyan \033[4mM\033[24m""$fggray""anagement ]"
echo ""
echo ""
echo ""
echo -e "$fggray                                       .-=( Red|Sword - 2024 )=-."
echo ""
echo ""
echo -ne "$fgpurple2""___________________________________________________________________________________________________________\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgcyan$fgpurple1                             \033[5m A N N I H I L A T I O N   P R O C E S S U S \033[25m                                 $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgred                                             *** WARNING ***                                               $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | This script will delete your Pandora installation.                                                     $reset\n"
echo -ne "$bgdark$fgcyan| | If it's expected, enter 'Y' to confirme this action. Be sure to have backup files.                     $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo -e "$fglightgray"
read -p "|>| Are you sure ? Enter 'Y' : "
if [[ ! $REPLY == "Y" ]]
then
        echo "|!| Annihilation process interrupted - Exiting"
        exit 1
fi

echo -n "|+| Annihilation processus started at "
echo $(date +"%d/%m/%y %H:%M:%S")

# ROOT CHECK
echo -n "|>| Checking if we are r00t "
R=$(id -u)
if [[ $R -eq 0 ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo "|!| We need root privilege. Please run this script as root "
        exit
fi

sleep 1

##################################################################
# PANDORA SERVICE
##################################################################

echo -n "|>| Stopping pandora service "
systemctl stop pandorad.service >/dev/null 2>&1
systemctl disable pandorad.service >/dev/null 2>&1
echo -e "$STATUS_OK"

echo -n "|>| Removing /etc/init.d/pandorad"
if [[ -e "/etc/init.d/pandorad" ]]
then
        rm /etc/init.d/pandorad
        systemctl daemon-reload
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

sleep 1

##################################################################
# TOR SERVICE
##################################################################









##################################################################
# RESTORING FILE
##################################################################

echo "|>| Restoring /etc/hostname"
mv /var/lib/pandora/var/backup/hostname /etc/hostname

echo "|>| Restoring /etc/motd"
mv /var/lib/pandora/var/backup/motd /etc/motd

echo "|>| Restoring /etc/apache2/ports.conf"
mv /var/lib/pandora/var/backup/ports.conf /etc/apache2/ports.conf

sleep 1

##################################################################
# REMOVING FILES
##################################################################

echo -n "|>| Removing /var/spool/cron/crontabs/root"
if [[ -e "/var/spool/cron/crontabs/root" ]]
then
        rm /var/spool/cron/crontabs/root
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -n "|>| Removing /etc/sudoers.d/p8-www-root"
if [[ -e "/etc/sudoers.d/p8-www-root" ]]
then
        rm /etc/sudoers.d/p8-www-root
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -n "|>| Removing /etc/apache2/sites-enabled/pandora.conf"
if [[ -e "/etc/apache2/sites-enabled/pandora.conf" ]]
then
        rm /etc/apache2/sites-enabled/pandora.conf
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -n "|>| Removing wan ip file in /dev/shm/ip.wan"
if [[ -e "/dev/shm/ip.wan" ]]
then
        rm /dev/shm/ip.wan
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -n "|>| Removing /dev/shm/network.json"
if [[ -e "/dev/shm/network.json" ]]
then
        rm /dev/shm/network.json
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -n "|>| Removing /dev/shm/system.json"
if [[ -e "/dev/shm/system.json" ]]
then
        rm /dev/shm/system.json
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

sleep 1

##################################################################
# REMOVING DIRECTORY
##################################################################

echo -n "|>| Removing /var/www/pandora"
if [[ -e /var/www/pandora ]]
then
        rm -rf /var/www/pandora
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


echo -n "|>| Removing /var/lib/pandora"
if [[ -e /var/lib/pandora ]]
then
        rm -rf /var/lib/pandora
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

sleep 1

##################################################################
# END
##################################################################

echo ""
echo -ne "$fgpurple2""___________________________________________________________________________________________________________\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgcyan$fgpurple1                             \033[5m A N N I H I L A T I O N   C O M P L E T E D \033[25m                                 $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | Thanks you to have used Pandora Infinity.                                                              $reset\n"
echo -ne "$bgdark$fgcyan| | Hope we will see you again.                                                                            $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo ""
echo "|-| Code Over - Done"

exit
