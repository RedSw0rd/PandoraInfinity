#!/bin/bash
###################################################################
# PANDORA ZERO - EVOLUTION PROCESS SCRIPT
###################################################################
# VAR
DEP_LIST_URL="https://raw.githubusercontent.com/RedSw0rd/PandoraInfinity/main/pandora-infinity-deps.list"
T=$(date +"%d%m%y-%s")
#LOGFILE="/root/p8-evolution-stage-1-$T.log"
LOGFILE="/root/stage1.log"
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
grad1="\033[38;5;213m";
grad2="\033[38;5;207m";
grad3="\033[38;5;147m";
grad4="\033[38;5;051m";
grad5="\033[38;5;045m";
grad6="\033[38;5;123m";

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
echo -e "$grad1  ______ _______ _______ ______  _______ ______  _______    _ _______ _______ _ _______ _ _______ _     _"
echo -e "$grad2 (_____ (_______|_______|______)(_______|_____ \(_______)  | (_______|_______) (_______) (_______) |   | |"
echo -e "$grad3  _____) )______ _     _ _     _ _     _ _____) )_______   | |_     _ _____  | |_     _| |   _   | |___| |"
echo -e "$grad4 |  ____/  ___  | |   | | |   | | |   | |  __  /|  ___  |  | | |   | |  ___) | | |   | | |  | |  |_____  |"
echo -e "$grad5 | |    | |   | | |   | | |__/ /| |___| | |  \ \| |   | |  | | |   | | |     | | |   | | |  | |   _____| |"
echo -e "$grad6 |_|    |_|   |_|_|   |_|_____/  \_____/|_|   \_|_|   |_|  |_|_|   |_|_|     |_|_|   |_|_|  |_|  (_______|"
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
sleep 1
echo "$(date +"%d/%m/%y %H:%M:%S") PANDORA INFINITY - EVOLUTION PROCESS STARTED" > $LOGFILE

# ROOT CHECK
echo -ne "$sup Checking if we are r00t "
R=$(id -u)
if [[ $R -eq 0 ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo "$warn We need root privilege. Please run this script as root "
        exit
fi

# OS CHECK
echo -ne "$sup Checking if we are on Kali "
OS=$(cat /etc/os-release | grep "^ID" | grep -v LIKE | cut -d'=' -f2)
if [[ "$OS" -eq "kali" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$warn Pandora Infinity is based on Kali Linux. Please use Kali to run Pandora Infinity"
        exit
fi

# PREVIOUS INSTALLATION CHECK
echo -ne "$sup Checking for previous installation "
if [[ -e /var/www/pandora ]]
then
        echo -e "$STATUS_KO"
        echo -e "$err Previous installation found. Please run the annihilation script before."
        #exit
else
        echo -e "$STATUS_OK"
fi

# DEPENDENCIES
echo -ne "$sup Downloading deps list from "
rm pandora-infinity-deps.list > /dev/null 2>&1
wget $DEP_LIST_URL > /dev/null 2>&1
if [[ -e pandora-infinity-deps.list ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -e "$plus Checking dependencies"
COUNT=0
MISSED_PACKAGES=""
while read line
do
        if [[ ! -z $line ]]
        then
                echo -ne "$textColor--> $line "

                R=$(/usr/bin/apt-cache policy $line | head -2 | tail -1 | awk '{print $2}')
                if [ -z $R ] || [ "$R" == "(none)" ]
                then
                        echo -e "$STATUS_KO"
                        COUNT=$((COUNT+1))
                        MISSED_PACKAGES="$MISSED_PACKAGES $line"
                else
                        echo -e "$STATUS_OK"
                fi
        fi
done < pandora-infinity-deps.list
rm pandora-infinity-deps.list

if [[ $COUNT -gt 1 ]]
then
        echo -ne "$fgred""___________________________________________________________________________________________________________$reset\n"
        echo -ne "$bgdark                                                                                                           $reset\n"
        echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
        echo -ne "$bgdark$fgcyan| |$fgred WARNING !                                                                                              $reset\n"
        echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
        echo -ne "$bgdark$fgcyan| | Some programs are not installed. Please report them to redsword.io.                                    $reset\n"
        echo -ne "$bgdark$fgcyan| | Thanks.                                                                                                $reset\n"
        echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
        echo -ne "$bgdark$fgred""___________________________________________________________________________________________________________$reset\n"
        echo ""
        sleep 2
fi


###################################################################
# GIT CLONING
###################################################################

echo -e "$plus Cloning some GIT "
echo -e "$(date +"%d/%m/%y %H:%M:%S") CLONING" >> $LOGFILE

echo -ne "$plus Creating /var/lib/gitroot "
if [[ -e "/var/lib/gitroot" ]]
then
        echo -e "$STATUS_OK"
        echo -e "$warn The directory /var/lib/gitroot/ was already present "
else
        mkdir /var/lib/gitroot

        if [[ -e "/var/lib/gitroot" ]]
        then
                echo -e "$STATUS_OK"
        else
                echo -e "$STATUS_KO"
                exit
        fi
fi

echo -ne "$textColor--> Libcrafter "
git clone https://github.com/pellegre/libcrafter /var/lib/gitroot/libcrafter >> $LOGFILE 2>&1
if [[ -e "/var/lib/gitroot/libcrafter" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


##################################################################
# COMPILE
##################################################################

echo -e "$plus Code compilation time "
echo "$(date +"%d/%m/%y %H:%M:%S") COMPILING " >> $LOGFILE

# LIBCRAFTER
echo -ne "$sup Compiling libcrafter (very long step) "
cd /var/lib/gitroot/libcrafter/libcrafter
./autogen.sh >> $LOGFILE 2>&1
make >> $LOGFILE 2>&1
#make install >> $LOGFILE 2>&1
#ldconfig
echo -e "$STATUS_OK"


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
echo -ne "$bgdark$fgcyan| | The first stage of evolution process is complete.                                                      $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | Run the following command to start the stage 2 :                                                       $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | wget https://raw.githubusercontent.com/RedSw0rd/PandoraInfinity/main/p8-evolution-stage-2.sh           $reset\n"
echo -ne "$bgdark$fgcyan| | chmod +x p8-evolution-stage-2.sh                                                                       $reset\n"
echo -ne "$bgdark$fgcyan| | ./p8-evolution-stage-2.sh                                                                              $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo ""
echo -e "$minus CODE OVER - DONE"

exit
