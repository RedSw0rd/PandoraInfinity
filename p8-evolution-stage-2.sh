#!/bin/bash
###################################################################
# PANDORA INFINITY - EVOLUTION PROCESS SCRIPT
###################################################################

# VAR
DEP_LIST_URL="https://raw.githubusercontent.com/RedSw0rd/PandoraInfinity/main/pandora-infinity-deps.list"
#PANDORA_ARCHIVE_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-latest.tar.gz"
#PANDORA_CHECKSUM_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-latest.sum"
PANDORA_ARCHIVE_URL="http://192.168.1.69/RedSword_dev/pandorainfinity/versions/pandora-latest.tar.gz"
PANDORA_CHECKSUM_URL="http://192.168.1.69/RedSword_dev/pandorainfinity/versions/pandora-latest.sum"

T=$(date +"%d%m%y-%s")
LOGFILE="/root/p8-evolution-stage-2-$T.log"
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
echo -ne "$bgcyan$fgpurple1                      \033[5m E V O L U T I O N    P R O C E S S U S   -   S T A G E   2\033[25m                          $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgred                                            *** DICLAIMER ***                                              $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | This tool is provided for educational and testing purposes only and cannot be used for law violation   $reset\n"
echo -ne "$bgdark$fgcyan| | or personal gain. Its use must comply with the laws and regulations in force in your country or        $reset\n"
echo -ne "$bgdark$fgcyan| | region. The author and contributors of this project disclaim any liability for abusive or unlawful     $reset\n"
echo -ne "$bgdark$fgcyan| | use thereof.                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | This software is provided \"as is\", without any warranty, express or implied, including but not         $reset\n"
echo -ne "$bgdark$fgcyan| | limited to the warranties of merchantability or fitness for a particular purpose. In no event shall    $reset\n"
echo -ne "$bgdark$fgcyan| | the authors or copyright holders be liable for any damages arising directly or indirectly from the     $reset\n"
echo -ne "$bgdark$fgcyan| | use of this software or its inability to be used.                                                      $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | The use of this tool is at your own risk. Make sure you have the necessary permissions before using    $reset\n"
echo -ne "$bgdark$fgcyan| | it on systems that do not belong to you or for which you have not obtained explicit permission.        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | By using this tool, you acknowledge that you have read and agreed to the terms of this disclaimer.     $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo -e "$textColor"
echo -ne "$plus Are you agree ? Enter 'YES' to accept :$fgcyan "
read -p ""
if [[ ! $REPLY == "YES" ]]
then
        echo -e "$warn Evolution process interrupted - Exiting"
        exit 1
fi

echo -e "$plus Loading Stage 2 - Engine version : $scriptVersion"
echo -ne "$plus Stage 2 Evolution processus started at "
echo $(date +"%d/%m/%y %H:%M:%S")

echo "$(date +"%d/%m/%y %H:%M:%S") PANDORA INFINITY - EVOLUTION PROCESS STARTED" > $LOGFILE

# ROOT CHECK
echo -ne "\n$sup Checking if we are r00t "
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
        echo -e "$err Previous installation found. Please run INVERSION script before."
        exit
else
        echo -e "$STATUS_OK"
fi


###################################################################
#
###################################################################

raspiPlatform=0
echo -e "$sup Detecting plateform "
if [[ -e /sys/firmware/devicetree/base/model ]]
then
        echo -e "$plus Raspberry Pi detected "
        platform=$(cat /sys/firmware/devicetree/base/model)
        echo -e "$plus $platform "

        raspiPlatform=1

elif [[ -e /sys/class/dmi/id/product_name ]]
then
        virt=$(dmidecode --string system-manufacturer)
        if [ "$virt" == "QEMU" ]
        then
                echo -e "$plus Virtual machine powered by $virt "
        fi

        platform=$(cat /sys/class/dmi/id/product_name)
        echo -e "$plus $platform "
else
        echo -e "$warn Plateform undetermined "
fi


###################################################################
#
###################################################################

# DOWNLOAD ARCHIVE
rm pandora-latest.tar.gz > /dev/null 2>&1
echo "$(date +"%d/%m/%y %H:%M:%S") DOWNLOADING ARCHIVE FILE" >> $LOGFILE
echo -ne "$sup Downloading Pandora Infinity Archive "
wget $PANDORA_ARCHIVE_URL > /dev/null 2>&1
if [[ -e "pandora-latest.tar.gz" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$err Archive download failed. Check your connectivity and if the url is reacheable"
        exit
fi

echo -ne "$sup Generating checksum "
SUM=$(sha256sum pandora-latest.tar.gz | awk '{print $1}')
if [[ -z $SUM ]]
then
        echo -e "$STATUS_KO"
else
        echo -e "$STATUS_OK"
        echo ">>> $SUM "
fi

echo -ne "$sup Downloading checksum "
rm pandora-latest.sum > /dev/null 2>&1
wget $PANDORA_CHECKSUM_URL > /dev/null 2>&1
if [[ -e "pandora-latest.sum" ]]
then
        echo -e "$STATUS_OK"
        SUM2=$(cat pandora-latest.sum)
        echo ">>> $SUM2 "
else
        echo -e $"STATUS_KO"
        echo -e "$warn Checksum file download failed. Check your connectivity and if the url is reacheable"
        exit
fi

echo -ne "$sup Checking checksum "
SUM2=$(cat pandora-latest.sum)
if [[ "$SUM" == "$SUM2" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$warn Checksum comparaison failed. Please contact redsword cybersecurity to inform them"
        #exit
fi

#
echo -e "$plus$fgcyan Starting Evolution Process "

# DECOMPRESS ARCHIVES
echo "$(date +"%d/%m/%y %H:%M:%S") DECOMPRESSING ARCHIVE" >> $LOGFILE
echo -ne "$sup Decompressing archive in /tmp directory "
tar -xzf pandora-latest.tar.gz -C /tmp/
echo -e "$STATUS_OK"

echo -ne "$sup Check if /tmp/www exists "
if [[ -e "/tmp/www" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$warn Decompression failed. What happen ?"
        exit
fi

echo -ne "$sup Check if /tmp/lib exists "
if [[ -e "/tmp/lib" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$warn Decompression failed. What happen ?"
        exit
fi

# INSTALL APP STRUCTURE
echo -ne "$sup Moving www dir to /var/www/pandora "
mv /tmp/www/pandora /var/www/pandora
if [[ -e "/var/www/pandora" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$warn Directory move failed. What's happenned ?"
        exit
fi

echo -ne "$sup Moving lib dir to /var/lib/pandora "
mv /tmp/lib/pandora /var/lib/pandora
if [[ -e "/var/lib/pandora" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "$warn Directory move failed. What's happenned ?"
        exit
fi


##################################################################
# SYSTEM CONFIG FILES
##################################################################

#
echo -ne "$sup Modifying /etc/hostname file "
if [[ ! -e "/var/lib/pandora/var/backup/hostname" ]]
then
        cp /etc/hostname /var/lib/pandora/var/backup/hostname
fi
mv /etc/hostname /etc/hostname.ORIGINAL
cp /var/lib/pandora/sys/setup/config/network/hostname /etc/hostname
if [[ -e "/etc/hostname" ]]
then
        echo -e "$STATUS_OK"
        hostname $(cat /etc/hostname)
else
        echo -e "$STATUS_KO"
fi


# PLACING MOTD FILES
echo -ne "$sup Copying motd file "
if [[ ! -e "/var/lib/pandora/var/backup/motd" ]]
then
        cp /etc/motd /var/lib/pandora/var/backup/motd
fi
mv /etc/motd /etc/motd.ORIGINAL
cp /var/lib/pandora/sys/setup/config/motd/motd /etc/motd
if [[ -e "/etc/motd" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


# PLACING CRONTAB FILE
echo -ne "$sup Copying crontab file "
cp /var/lib/pandora/sys/setup/config/crontab/root /var/spool/cron/crontabs/root
if [[ -e "/var/spool/cron/crontabs/root" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


# PLACING SUDO FILE
echo -ne "$sup Copying sudo file "
cp /var/lib/pandora/sys/setup/config/sudo/p8-www-root /etc/sudoers.d/p8-www-root
if [[ -e "/etc/sudoers.d/p8-www-root" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


# APACHE CONFIG
echo -ne "$sup Modifying /etc/apache2/ports.conf file "
cp /etc/apache2/ports.conf /var/lib/pandora/var/backup/ports.conf
mv /etc/apache2/ports.conf /etc/apache2/ports.conf.ORIGINAL
cp /var/lib/pandora/sys/setup/config/apache/ports.conf /etc/apache2/ports.conf
if [[ -e "/etc/apache2/ports.conf" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


# REMOVING DEFAULT APACHE CONFIG FILE
#echo -n "$sup Removing Apache 000-default.conf file "
#rm /etc/apache2/sites-enabled/000-default.conf
#echo -e $STATUS_OK


#
echo -ne "$sup Copying Apache vhost file "
cp /var/lib/pandora/sys/setup/config/apache/pandora.conf /etc/apache2/sites-enabled/pandora.conf
if [[ -e "/etc/apache2/sites-enabled/pandora.conf" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


##################################################################
# INTERNAL CONFIG FILES
##################################################################

#
echo -ne "$sup Copying config file "
cp /var/lib/pandora/sys/setup/config/proxychains/* /var/lib/pandora/var/config/proxychains
cp /var/lib/pandora/sys/setup/config/sqlmap/sqlmap.conf /var/lib/pandora/var/config/sqlmap/
cp /var/lib/pandora/sys/setup/config/dnsspoof/dnsspoof.conf /var/lib/pandora/var/config/dnsspoof/
cp /var/lib/pandora/sys/setup/config/dnschef/dnschef.ini /var/lib/pandora/var/config/dnschef/
cp /var/lib/pandora/sys/setup/config/tor/torrc /var/lib/pandora/var/config/tor/
cp /var/lib/pandora/sys/setup/config/hostapd/* /var/lib/pandora/var/config/hostapd/

if [ -e "/var/lib/pandora/var/config/proxychains/proxychains-tcp.conf" ] && [ -e "/var/lib/pandora/var/config/sqlmap/sqlmap.conf" ] && [ -e "/var/lib/pandora/var/config/dnsspoof/dnsspoof.conf" ] && [ -e "/var/lib/pandora/var/config/dnschef/dnschef.ini" ] && [ -e "/var/lib/pandora/var/config/tor/torrc" ] && [ -e "/var/lib/pandora/var/config/hostapd/hostapd-evil.conf" ]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


##################################################################
# CERTIFICATS
##################################################################

echo -ne "$sup Generating X.509 certificat "
openssl req -new -x509 -days 365 -subj '/C=XX/ST=NULL/L=NULL/O=Redsword Cyber Security/OU=Redsword Cyber Security/CN=www.redsword.net' -nodes -out /var/lib/pandora/var/certs/pandora/pdr.pem -keyout /var/lib/pandora/var/certs/pandora/pdr.key > /dev/null 2>&1
if [ -e "/var/lib/pandora/var/certs/pandora/pdr.pem" ] && [ -e "/var/lib/pandora/var/certs/pandora/pdr.key" ]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
        echo -e "|W| certificats generation failed. Please fix it later"
fi


##################################################################
# SQLITE DATABASE
##################################################################
echo -ne "$sup Installing DB. Please wait "
find /var/lib/pandora/sys/setup/config/sqlite/ -type f -name "*.php" -exec php -f {} \; >$LOGFILE 2>&1
echo -e "$STATUS_OK"


##################################################################
# PANDORA DAEMON
##################################################################

echo -ne "$sup Compiling Pandora Service "
gcc /var/lib/pandora/sys/scripts/pandora/daemon/pdrd.c -o /var/lib/pandora/sys/scripts/pandora/daemon/pdrd >/dev/null
if [[ -e "/var/lib/pandora/sys/scripts/pandora/daemon/pdrd" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


echo -ne "$sup Placing pandora service "
cp /var/lib/pandora/sys/setup/config/pandora/pandora-init-script.sh /etc/init.d/pandorad
chmod 0755 /etc/init.d/pandorad
systemctl daemon-reload
update-rc.d pandorad defaults
systemctl start pandorad.service
if [[ -e "/etc/init.d/pandorad" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


##################################################################
# TTYD
##################################################################
echo -ne "$sup Placing ttyd static binary "
arch=$(uname -m)
if [ "$arch" == "aarch64" ]
then
        cp /var/lib/pandora/sys/setup/binary/ttyd/ttyd.aarch64 /var/lib/pandora/var/bin/ttyd
        if [[ -e "/var/lib/pandora/var/bin/ttyd" ]]
        then
                chmod +x /var/lib/pandora/var/bin/ttyd
                echo -e "$STATUS_OK"
        else
                echo -e "$STATUS_KO"
        fi

elif [ "$arch" == "x86_64" ]
then
        cp /var/lib/pandora/sys/setup/binary/ttyd/ttyd.x86_64 /var/lib/pandora/var/bin/ttyd
        if [[ -e "/var/lib/pandora/var/bin/ttyd" ]]
        then
                chmod +x /var/lib/pandora/var/bin/ttyd
                echo -e "$STATUS_OK"
        else
                echo -e "$STATUS_KO"
        fi

elif [ "$arch" == "" ]
then
        cp /var/lib/pandora/sys/setup/binary/ttyd/ttyd.i686 /var/lib/pandora/var/bin/ttyd

        if [[ -e "/var/lib/pandora/var/bin/ttyd" ]]
        then
                chmod +x /var/lib/pandora/var/bin/ttyd
                echo -e "$STATUS_OK"
        else
                echo -e "$STATUS_KO"
        fi
else
        echo -e "$STATUS_KO"
fi


##################################################################
#
##################################################################

echo -ne "$sup Setting owner to www-data "
chown -R www-data: /var/www/pandora
chown -R www-data: /var/lib/pandora
find /var/lib/pandora/sys/scripts/pandora -type f -name "*.sh" -exec chmod +x {} \;
echo -e "$STATUS_OK"

echo -ne "$sup Changing file mode "
find /var/www/pandora -type d -exec chmod 0711 {} \;
find /var/www/pandora -type f -exec chmod 0644 {} \;
echo -e "$STATUS_OK"

#echo -ne "$sup Disabling the Windows Manager (GUI) "
#systemctl set-default multi-user.target > /dev/null 2>&1
#echo -e $STATUS_OK

sleep 3


##################################################################
# START AT BOOT
##################################################################
echo "$(date +"%d/%m/%y %H:%M:%S") BOOT SERVICES " >> $LOGFILE
echo -ne "$sup Activating some services at boot "
systemctl enable apache2 >> $LOGFILE 2>&1
systemctl enable pandorad >> $LOGFILE 2>&1
#systemctl unmask hostapd >> $LOGFILE 2>&1
#systemctl enable hostapd >> $LOGFILE 2>&1
echo -e "$STATUS_OK"


##################################################################
# APACHE MODULES
##################################################################
echo -e "$plus Enabling 5 Apache modules "
echo -ne "$textColor""--> ssl "
a2enmod ssl >> $LOGFILE 2>&1
if [[ -e "/etc/apache2/mods-enabled/ssl.load" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor""--> proxy "
a2enmod proxy >> $LOGFILE 2>&1
if [[ -e "/etc/apache2/mods-enabled/proxy.load" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor""--> proxy_http "
a2enmod proxy_http >> $LOGFILE 2>&1
if [[ -e "/etc/apache2/mods-enabled/proxy_http.load" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor""--> proxy_connect "
a2enmod proxy_connect >> $LOGFILE 2>&1
if [[ -e "/etc/apache2/mods-enabled/proxy_connect.load" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor""--> rewrite "
a2enmod rewrite >> $LOGFILE 2>&1
if [[ -e "/etc/apache2/mods-enabled/rewrite.load" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


##################################################################
# MISC
##################################################################
# CHECK ROOT PRIV
echo -ne "$sup Checking if www-data have root privilege via sudo "
P=$(sudo -u www-data sudo -n id -u 2>/dev/null)
if [[ "$P" == "0" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi







##################################################################
# FIX
##################################################################

#
# CHECK IF A FIX SCRIPT IS PRESENT FOR THIS VERSION
#





##################################################################
# CLEANING
##################################################################
echo -ne "$sup Cleaning "
rm /root/pandora-latest.tar.gz
rm /root/pandora-latest.sum
rm -rf /tmp/www
rm -rf /tmp/lib
if [[ ! -e "/tmp/pandora" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


##################################################################
# END
##################################################################

echo -ne "$fgpurple2___________________________________________________________________________________________________________\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgcyan$fgpurple1                                  \033[5m S T A G E   2   C O M P L E T E D \033[25m                                      $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"

echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | CONGRAGULATION !                                                                                       $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | You have successfully installed Pandora Infinity.                                                      $reset\n"
echo -ne "$bgdark$fgcyan| | Read the online documentation on https://redsword.io for the post-installation actions.                $reset\n"
echo -ne "$bgdark$fgcyan| | Your are near the final steps.                                                                         $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | Informations :                                                                                         $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | URL      : https://<IP>:31415                                                                          $reset\n"
echo -ne "$bgdark$fgcyan| | Login    :$fgred Commander                                                                                   $reset\n"
echo -ne "$bgdark$fgcyan| | Password :$fgred P@nd0raInfinity                                                                             $reset\n"
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

echo "$(date +"%d/%m/%y %H:%M:%S") PANDORA INFINITY - EVOLUTION PROCESS TERMINATED" >> $LOGFILE
exit
