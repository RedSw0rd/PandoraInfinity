#!/bin/bash
###################################################################
# PANDORA ZERO - REDSWORD CYBER SECURTY - EVOLUTION PROCESS SCRIPT
###################################################################
# VAR
DEP_LIST_URL="https://raw.githubusercontent.com/RedSw0rd/PandoraInfinity/main/pandora-infinity-deps.list"
PANDORA_ARCHIVE_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-infinity-latest.tar.gz"
PANDORA_CHECKSUM_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-infinity-latest.sum"
T=$(date +"%d%m%y-%s")
LOGFILE="/root/p8-evolution-stage-1-$T.log"
scriptVersion="0.1.0"

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

STATUS_OK="\r\t\t\t\t\t\t\t\t\t\t\t\t     $white[$green OK $white]$textColor"
STATUS_KO="\r\t\t\t\t\t\t\t\t\t\t\t\t     $white[$red K0 $white]$textColor"
textColor="$fglightgray";
borderColor="$fgcyan";
insideBorderColor="$lpurple"
plus="$borderColor|$insideBorderColor""+""$borderColor|$textColor"
minus="$borderColor|$insideBorderColor""-""$borderColor|$textColor"
sup="$borderColor|$insideBorderColor"">""$borderColor|$textColor"
warn="$borderColor|$insideBorderColor""!""$borderColor|$textColor"
err="$borderColor|$insideBorderColor""E""$borderColor|$textColor"

echo -ne "$fgcyan""___________________________________________________________________________________________________________\n"
echo -ne "$bgpurple                                                                                                           $reset\n"
echo -ne "$bgpurple$fgcyan                                W E L C O M E    N E W   C H A L L E N G E R                               $reset\n"
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
echo -ne "$bgcyan$fgpurple1                      \033[5m E V O L U T I O N    P R O C E S S U S   -   S T A G E   1\033[25m                          $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgred                                            *** DICLAIMER ***                                              $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | This project is created for educational purposes and cannot be used for law violation or personal      $reset\n"
echo -ne "$bgdark$fgcyan| | gain.                                                                                                  $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | The author of this project is not responsible for any possible harm caused by the materials of this    $reset\n"
echo -ne "$bgdark$fgcyan| | project.                                                                                               $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo -e "$textColor"


exit

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



##################################################################
# END
##################################################################

echo -ne "$fgpurple2___________________________________________________________________________________________________________\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgcyan$fgpurple1                                  \033[5m S T A G E   1   C O M P L E T E D \033[25m                                      $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"

echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | CONGRAGULATION !                                                                                       $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | You have successfully installted Pandora Infinity.                                                     $reset\n"
echo -ne "$bgdark$fgcyan| | Read the online documentation on redsword.io for the post-installation actions.                        $reset\n"
echo -ne "$bgdark$fgcyan| | Your are near the final steps.                                                                         $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | Informations :                                                                                         $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | URL      : https://<IP>:31415                                                                          $reset\n"
echo -ne "$bgdark$fgcyan| | Login    :$fgred Commander                                                                                   $reset\n"
echo -ne "$bgdark$fgcyan| | Password :$fgred PandoraInfinity2024                                                                         $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | Welcome in the Red Squad !                                                                             $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |$fgred REBOOT IS REQUIRED                                                                                     $reset\n"
echo -ne "$bgdark$fgcyan| | Please enter the reboot command to restart the system.                                                 $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo ""
echo "|-| Code Over - Done"

exit
