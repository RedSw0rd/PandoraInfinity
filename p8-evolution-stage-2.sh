#!/bin/bash
###################################################################
# PANDORA INFINITY - REDSWORD CYBER SECURTY - EVOLUTION PROCESS SCRIPT
###################################################################
# VAR
DEP_LIST_URL="https://raw.githubusercontent.com/RedSw0rd/PandoraInfinity/main/pandora-infinity-deps.list"
PANDORA_ARCHIVE_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-latest.tar.gz"
PANDORA_CHECKSUM_URL="http://192.168.1.50/pandorainfinity/download/versions/latest/pandora-latest.sum"
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
        echo "|!| Pandora Infinity is based on Kali Linux. Please use Kali to run Pandora Infinity"
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


###################################################################
#
###################################################################

# DOWNLOAD ARCHIVE
rm pandora-latest.tar.gz > /dev/null 2>&1
echo "$(date +"%d/%m/%y %H:%M:%S") DOWNLOADING ARCHIVE FILE" >> $LOGFILE
echo -n "|>| Downloading Pandora Infinity Archive "
wget $PANDORA_ARCHIVE_URL > /dev/null 2>&1
if [[ -e "pandora-latest.tar.gz" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|E| Archive download failed. Check your connectivity and if the url is reacheable"
        exit
fi

echo -n "|>| Generating checksum "
SUM=$(sha256sum pandora-latest.tar.gz | awk '{print $1}')
if [[ -z $SUM ]]
then
        echo -e $STATUS_KO
else
        echo -e $STATUS_OK
        echo ">>> $SUM "
fi

echo -n "|>| Downloading checksum "
rm pandora-latest.sum > /dev/null 2>&1
wget $PANDORA_CHECKSUM_URL > /dev/null 2>&1
if [[ -e "pandora-latest.sum" ]]
then
        echo -e $STATUS_OK
        SUM2=$(cat pandora-latest.sum)
        echo ">>> $SUM2 "
else
        echo -e $STATUS_KO
        echo "|!| Checksum file download failed. Check your connectivity and if the url is reacheable"
        exit
fi

echo -n "|>| Checking checksum "
SUM2=$(cat pandora-latest.sum)
if [[ "$SUM" == "$SUM2" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|!| Checksum comparaison failed. Please contact redsword cybersecurity to inform them"
        #exit
fi

echo -e "|+| \033[0;92mStarting Evolution Process\033[0;37m "

# DECOMPRESS ARCHIVES
echo "$(date +"%d/%m/%y %H:%M:%S") DECOMPRESSING ARCHIVE" >> $LOGFILE
echo -n "|>| Decompressing archive in /tmp directory "
tar -xzf pandora-latest.tar.gz -C /tmp/
if [[ -e "/tmp/www" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|!| Decompression failed. What happen ?"
        exit
fi

if [[ -e "/tmp/pandora-infinity/VERSION" ]]
then
        VERSION=$(cat /tmp/pandora-infinity/VERSION)
        echo ">>> Found version : $VERSION"
fi

# INSTALL APP STRUCTURE
echo -n "|>| Moving www dir to /var/www/pandora "
mv /tmp/www/pandora /var/www/pandora
if [[ -e "/var/www/pandora" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|!| Directory move failed. What's happenned ?"
        exit
fi

echo -n "|>| Moving lib dir to /var/lib/pandora "
mv /tmp/lib/pandora /var/lib/pandora
if [[ -e "/var/lib/pandora" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|!| Directory move failed. What's happenned ?"
        exit
fi


##################################################################
# SYSTEM CONFIG FILES
##################################################################

#
echo -n "|>| Modifying /etc/hostname file "
cp /etc/hostname /var/lib/pandora/install/backup/hostname
mv /etc/hostname /etc/hostname.ORIGINAL
cp /var/lib/pandora/install/network/hostname /etc/hostname
if [[ -e "/etc/hostname" ]]
then
        echo -e $STATUS_OK
        hostname $(cat /etc/hostname)
else
        echo -e $STATUS_KO
fi


# PLACING MOTD FILES
echo -n "|>| Copying motd file "
cp /etc/motd /var/lib/pandora/install/backup/motd
mv /etc/motd /etc/motd.ORIGINAL
cp /var/lib/pandora/install/motd/motd /etc/motd
if [[ -e "/etc/motd" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi


# PLACING CRONTAB FILE
echo -n "|>| Copying crontab file "
cp /var/lib/pandora/install/crontab/root /var/spool/cron/crontabs/root
if [[ -e "/var/spool/cron/crontabs/root" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi


# PLACING SUDO FILE
echo -n "|>| Copying sudo file "
cp /var/lib/pandora/install/sudo/p8-www-root /etc/sudoers.d/p8-www-root
if [[ -e "/etc/sudoers.d/p8-www-root" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi


# APACHE CONFIG
echo -n "|>| Modifying /etc/apache2/ports.conf file "
cp /etc/apache2/ports.conf /var/lib/pandora/install/backup/ports.conf
mv /etc/apache2/ports.conf /etc/apache2/ports.conf.ORIGINAL
cp /var/lib/pandora/install/apache/ports.conf /etc/apache2/ports.conf
if [[ -e "/etc/apache2/ports.conf" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi


# REMOVING DEFAULT APACHE CONFIG FILE
echo -n "|>| Removing Apache 000-default.conf file "
rm /etc/apache2/sites-enabled/000-default.conf
echo -e $STATUS_OK


#
echo -n "|>| Copying Apache VHost file "
cp /var/lib/pandora/install/apache/pandora.conf /etc/apache2/sites-enabled/pandora.conf
if [[ -e "/etc/apache2/sites-enabled/pandora.conf" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi


##################################################################
# CERTIFICATS
##################################################################

echo -n "|>| Generating X.509 certificat "
openssl req -new -x509 -days 365 -subj '/C=XX/ST=NULL/L=NULL/O=Redsword Cyber Security/OU=Redsword Cyber Security/CN=www.redsword.net' -nodes -out /var/lib/pandora/certs/pandora/pdr.pem -keyout /var/lib/pandora/certs/pandora/pdr.key > /dev/null 2>&1
if [ -e "/var/lib/pandora/certs/pandora/pdr.pem" ] && [ -e "/var/lib/pandora/certs/pandora/pdr.key" ]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
        echo "|W| certificats generation failed. Please fix it later"
fi



##################################################################
# SQLITE DATABASE
##################################################################
echo "|>| Installing DB "
# find /var/lib/pandora/install/sqlite/ -type f -name "*.php" -exec php -f {} \;




##################################################################
#
##################################################################

echo -n "|>| Setting owner to www-data "
chown -R www-data: /var/www/pandora
chown -R www-data: /var/lib/pandora
find /var/lib/pandora/scripts/pandora -type f -name "*.sh" -exec chmod +x {} \;
echo -e $STATUS_OK

echo -n "|>| Disabling the Windows Manager (GUI) "
systemctl set-default multi-user.target > /dev/null 2>&1
echo -e $STATUS_OK

sleep 3

##################################################################
# CLEANNING
##################################################################
echo -n "|>| Cleanning "
rm /root/pandora-latest.tar.gz
rm /root/pandora-latest.sum
rm -rf /tmp/www
rm -rf /tmp/lib
if [[ ! -e "/tmp/pandora" ]]
then
        echo -e $STATUS_OK
else
        echo -e $STATUS_KO
fi









exit
