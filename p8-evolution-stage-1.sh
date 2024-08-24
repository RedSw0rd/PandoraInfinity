#!/bin/bash
###################################################################
# PANDORA ZERO - REDSWORD CYBER SECURTY - EVOLUTION PROCESS SCRIPT
###################################################################
# VAR
DEP_LIST_URL="https://raw.githubusercontent.com/RedSw0rd/PandoraInfinity/main/pandora-infinity-deps.list"
PANDORA_ARCHIVE_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-infinity-latest.tar.gz"
PANDORA_CHECKSUM_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-infinity-latest.sum"
STATUS_OK="\r\t\t\t\t\t\t\t\t\t\t\t      [ \033[0;92mOK\033[0;37m ]"
STATUS_KO="\r\t\t\t\t\t\t\t\t\t\t\t      [ \033[0;91mK0\033[0;37m ]"
T=$(date +"%d%m%y-%s")
LOGFILE="/root/p8-evolution-$T.log"

# BANNER
echo -e " \033[0;97m"
base64 -d <<<"4paI4paI4paI4paI4paI4paI4pWXICDilojilojilojilojilojilZcg4paI4paI4paI4pWXICAg4paI4paI4pWX4paI4paI4paI4paI4paI4paI4pWXICDilojilojilojilojilojilojilZcg4paI4paI4paI4paI4paI4paI4pWXICDilojilojilojilojilojilZcgICAgIOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVl+KWiOKWiOKWiOKWiOKWiOKWiOKWiOKVl+KWiOKWiOKWiOKWiOKWiOKWiOKVlyAg4paI4paI4paI4paI4paI4paI4pWXIArilojilojilZTilZDilZDilojilojilZfilojilojilZTilZDilZDilojilojilZfilojilojilojilojilZcgIOKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKVlOKVkOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKVlOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKVlOKVkOKVkOKWiOKWiOKVlyAgICDilZrilZDilZDilojilojilojilZTilZ3ilojilojilZTilZDilZDilZDilZDilZ3ilojilojilZTilZDilZDilojilojilZfilojilojilZTilZDilZDilZDilojilojilZcK4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4paI4paI4paI4paI4paI4pWR4paI4paI4pWU4paI4paI4pWXIOKWiOKWiOKVkeKWiOKWiOKVkSAg4paI4paI4pWR4paI4paI4pWRICAg4paI4paI4pWR4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4paI4paI4paI4paI4paI4pWRICAgICAg4paI4paI4paI4pWU4pWdIOKWiOKWiOKWiOKWiOKWiOKVlyAg4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4pWRICAg4paI4paI4pWRCuKWiOKWiOKVlOKVkOKVkOKVkOKVnSDilojilojilZTilZDilZDilojilojilZHilojilojilZHilZrilojilojilZfilojilojilZHilojilojilZEgIOKWiOKWiOKVkeKWiOKWiOKVkSAgIOKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKVlOKVkOKVkOKWiOKWiOKVkSAgICAg4paI4paI4paI4pWU4pWdICDilojilojilZTilZDilZDilZ0gIOKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKVkSAgIOKWiOKWiOKVkQrilojilojilZEgICAgIOKWiOKWiOKVkSAg4paI4paI4pWR4paI4paI4pWRIOKVmuKWiOKWiOKWiOKWiOKVkeKWiOKWiOKWiOKWiOKWiOKWiOKVlOKVneKVmuKWiOKWiOKWiOKWiOKWiOKWiOKVlOKVneKWiOKWiOKVkSAg4paI4paI4pWR4paI4paI4pWRICDilojilojilZEgICAg4paI4paI4paI4paI4paI4paI4paI4pWX4paI4paI4paI4paI4paI4paI4paI4pWX4paI4paI4pWRICDilojilojilZHilZrilojilojilojilojilojilojilZTilZ0K4pWa4pWQ4pWdICAgICDilZrilZDilZ0gIOKVmuKVkOKVneKVmuKVkOKVnSAg4pWa4pWQ4pWQ4pWQ4pWd4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWdICDilZrilZDilZDilZDilZDilZDilZ0g4pWa4pWQ4pWdICDilZrilZDilZ3ilZrilZDilZ0gIOKVmuKVkOKVnSAgICDilZrilZDilZDilZDilZDilZDilZDilZ3ilZrilZDilZDilZDilZDilZDilZDilZ3ilZrilZDilZ0gIOKVmuKVkOKVnSDilZrilZDilZDilZDilZDilZDilZ0g"
echo -e "\033[0;37m\n------------------------------------------------------------------------------------------------"
echo -e "                             \033[0;92mE V O L U T I O N    P R O C E S S\033[0;37m"
echo "------------------------------------------------------------------------------------------------"
echo "$(date +"%d/%m/%y %H:%M:%S") PANDORA INFINITY - EVOLUTION PROCESS STARTED" > $LOGFILE

# ROOT CHECK
echo -n "|>| Checking if we are r00t "
R=$(id -u)
if [[ $R -eq 0 ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|!| We need root privilege. Please run this script as root "
        exit
fi

# OS CHECK
echo -n "|>| Checking if we are on Kali "
OS=$(cat /etc/os-release | grep "^ID" | grep -v LIKE | cut -d'=' -f2)
if [[ "$OS" -eq "kali" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|!| Pandora Infinity is based on Kali Linux. Please use Kali to run Pandora Zero"
        exit
fi

# PREVIOUS INSTALLATION CHECK
echo -n "|>| Checking for previous installation "
if [[ -e /var/www/pandora ]]
then
        echo -e $STATUS_KO
        echo "|E| Previous installation found. Please run INVERSION script before."
        exit
else
        echo -e $STATUS_OK
fi

# DEPENDENCIES
echo -n "|>| Downloading deps list from "
rm pandora-infinity-deps.list > /dev/null 2>&1
wget $DEP_LIST_URL > /dev/null 2>&1
if [[ -e pandora-infinity-deps.list ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi

echo "|+| Checking dependencies"
COUNT=0
MISSED_PACKAGES=""
while read line
do
        if [[ ! -z $line ]]
        then
                echo -n "--> $line "
                R=$(/usr/bin/apt-cache policy $line | head -2 | tail -1 | awk '{print $2}')
                if [ -z $R ] || [ "$R" == "(none)" ]
                then
                        echo -e $STATUS_KO
                        COUNT=$((COUNT+1))
                        MISSED_PACKAGES="$MISSED_PACKAGES $line"
                else
                        echo -e $STATUS_OK
                fi
        fi
done < pandora-infinity-deps.list
rm pandora-infinity-deps.list

if [[ $COUNT -gt 1 ]]
then
        echo -e "\n|!| $COUNT programs are not installed. Please install them before run this script."
        echo "|!| Run this command to back in buisness :"
        echo "|!| apt-get install$MISSED_PACKAGES"
        exit
fi

###################################################################
#
###################################################################

# GIT
echo "|+| Cloning some GIT "
echo "$(date +"%d/%m/%y %H:%M:%S") CLONING" >> $LOGFILE

mkdir /var/lib/gitroot/

echo -n "--> Libcrafter "
git clone https://github.com/pellegre/libcrafter /var/lib/gitroot/libcrafter >> $LOGFILE 2>&1
if [[ -e "/var/lib/gitroot/libcrafter" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi

exit
