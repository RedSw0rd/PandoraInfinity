#!/bin/bash
#
# PANDORA INFINITY
# EVOLUTION PROCESS SCRIPT - Stage 2
#
#
# PANDORA VERSION   : 0.0.1.0
# SCRIPT VERSION    : 0.0.1.0
# OLLAMA VERSION    : Latest
# MINICONDA VERSION : py313_25.5.1-0
#
#
#

# VAR
T=$(date +"%d%m%y-%s")
LOGFILE="/root/Pandora-Infinity-stage2-$T.log"
scriptVersion="0.0.1.0"

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
echo -ne "$bgpurple$fgcyan                               W E L C O M E    N E W   C O M M A N D E R                                  $reset\n"
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
echo -e "$fggray                                   --=($fgred Red\033[1;37mSWORD$fglightgray|Security - 2025 $fggray)=--"
echo ""
echo ""
echo -ne "$fgpurple2""___________________________________________________________________________________________________________\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgcyan$fgpurple1                        \033[5m E V O L U T I O N    P R O C E S S   -   S T A G E   2\033[25m                            $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | Welcome to the PANDORA INFINITY evolution process.                                                     $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | After several stages, your current pentesting environment will evolve into the PANDORA INFINITY        $reset\n"
echo -ne "$bgdark$fgcyan| | platform. Many changes will be made to your system.                                                    $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
#echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo -e "$textColor"
sleep 1

echo "$(date +"%d/%m/%y %H:%M:%S") PANDORA INFINITY - EVOLUTION PROCESS STARTED" > $LOGFILE

# ROOT CHECK
echo -ne "$sup Checking if we are root "
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
source /etc/os-release
if [[ "$ID" == "kali" ]]
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
        echo -e "$STATUS_OK"

        #echo -e "$STATUS_KO"
        #echo -e "$err Previous installation found. Please run the annihilation script before."
        #exit
else
        echo -e "$STATUS_OK"
fi


#
# GIT CLONING
#
#
#
#
#
#
#
#

echo -e "$plus Cloning some GIT "
echo -e "$(date +"%d/%m/%y %H:%M:%S") CLONING" >> $LOGFILE

echo -ne "$plus Creating /opt/pandora/github "
if [[ -e "/opt/pandora/github" ]]
then
        echo -e "$STATUS_OK"
        echo -e "$warn The directory /opt/pandora/github was already present "
else
        mkdir -p /opt/pandora/github

        if [[ -e "/opt/pandora/github" ]]
        then
                echo -e "$STATUS_OK"
        else
                echo -e "$STATUS_KO"
                exit
        fi
fi

echo -ne "$textColor--> Libcrafter "
git clone --depth 1 --single-branch https://github.com/pellegre/libcrafter /opt/pandora/github/libcrafter >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/libcrafter" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Responder "
git clone --branch v3.1.6.0 --depth 1 --single-branch https://github.com/lgandx/Responder.git /opt/pandora/github/Responder >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/Responder" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PyWSUS "
git clone --depth 1 --single-branch https://github.com/GoSecure/pywsus.git /opt/pandora/github/pywsus >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/pywsus" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> ShadowCoerce "
git clone --depth 1 --single-branch https://github.com/ShutdownRepo/ShadowCoerce.git /opt/pandora/github/shadowcoerce >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/shadowcoerce" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> SETH "
git clone --depth 1 --single-branch https://github.com/SySS-Research/Seth.git /opt/pandora/github/seth >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/seth" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PetitPotam "
git clone --depth 1 --single-branch https://github.com/topotam/PetitPotam.git /opt/pandora/github/petitpotam >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/petitpotam" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PetitPotam (bis)"
git clone --depth 1 --single-branch https://github.com/ly4k/PetitPotam.git /opt/pandora/github/petitpotam2 >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/petitpotam2" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> DFSCoerce "
git clone --depth 1 --single-branch https://github.com/Wh04m1001/DFSCoerce.git /opt/pandora/github/dfscoerce >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/dfscoerce" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Krbrelayx "
git clone --depth 1 --single-branch https://github.com/dirkjanm/krbrelayx.git /opt/pandora/github/krbrelayx >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/krbrelayx" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> TargetedKerberoast "
git clone --depth 1 --single-branch https://github.com/ShutdownRepo/targetedKerberoast.git /opt/pandora/github/targetedKerberoast >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/targetedKerberoast" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Sublist3r "
git clone --depth 1 --single-branch https://github.com/aboul3la/Sublist3r.git /opt/pandora/github/sublist3r >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/sublist3r" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PRET "
git clone --depth 1 --single-branch https://github.com/RUB-NDS/PRET.git /opt/pandora/github/PRET >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/PRET" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Crowbar "
git clone --branch v4.2 --depth 1 --single-branch https://github.com/galkan/crowbar.git /opt/pandora/github/crowbar >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/crowbar" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> theHarvester "
git clone --branch 4.8.0 --depth 1 --single-branch https://github.com/laramies/theHarvester.git /opt/pandora/github/theHarvester >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/theHarvester" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi


#
# OLLAMA
#
#
#
#
#
#
#
#

echo -e "$plus Creating AI powered platform "
echo -e "$(date +"%d/%m/%y %H:%M:%S") OLLAMA" >> $LOGFILE
echo -ne "$plus Installing Ollama "

curl -fsSL https://ollama.com/install.sh | sh >> $LOGFILE 2>&1

if systemctl is-active --quiet ollama
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi







#
# COMPILE
#
#
#
#
#
#
#
#

echo -e "$plus Code compilation time "
echo "$(date +"%d/%m/%y %H:%M:%S") COMPILING " >> $LOGFILE

# LIBCRAFTER
echo -ne "$sup Compiling libcrafter (very long step) "
cd /opt/pandora/github/libcrafter/libcrafter
./autogen.sh >> $LOGFILE 2>&1
make >> $LOGFILE 2>&1
#make install >> $LOGFILE 2>&1
#ldconfig
echo -e "$STATUS_OK"


#
# CONDA
#
#
#
#
#
#
#
#

echo -e "$plus Creating autonomous python environments "
echo -e "$(date +"%d/%m/%y %H:%M:%S") PYTHON ENV" >> $LOGFILE
echo -ne "$plus Installing Miniconda "

ARCH=$(uname -m)
MINICONDA_VERSION="py313_25.5.1-0"
wget https://repo.anaconda.com/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-${ARCH}.sh -O ./miniconda.sh >> $LOGFILE 2>&1
chmod +x ./miniconda.sh >> $LOGFILE 2>&1
./miniconda.sh -b -p /opt/miniconda3 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda config --add channels conda-forge >> $LOGFILE 2>&1

if [[ -e "/opt/miniconda3/bin/conda" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Responder "
/opt/miniconda3/bin/conda create -y --name responder python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n responder pip install aioquic >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n responder pip install "netifaces>=0.10.4" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/responder/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Impacket "
/opt/miniconda3/bin/conda create -y --name impacket python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n impacket pip install "impacket==0.12.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/impacket/bin/GetUserSPNs.py" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Mitmproxy "
/opt/miniconda3/bin/conda create -y --name mitmproxy python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n mitmproxy pip install "mitmproxy==12.1.1" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/mitmproxy/bin/mitmproxy" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Certipy "
/opt/miniconda3/bin/conda create -y --name certipy python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n certipy pip install "certipy-ad==5.0.3" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/certipy/bin/certipy" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Pypykatz "
/opt/miniconda3/bin/conda create -y --name pypykatz python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n pypykatz pip install "pypykatz==0.6.11" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/pypykatz/bin/pypykatz" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> SSH-MITM "
/opt/miniconda3/bin/conda create -y --name ssh-mitm python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n ssh-mitm pip install "ssh-mitm==5.0.1" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/ssh-mitm/bin/ssh-mitm" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PyWSUS "
/opt/miniconda3/bin/conda create -y --name pywsus python=3.9 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n pywsus pip install "beautifulsoup4==4.9.1" >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n pywsus pip install "lxml==4.6.2" >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n pywsus pip install "soupsieve==2.0.1" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/pywsus/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> ShadowCoerce "
/opt/miniconda3/bin/conda create -y --name shadowcoerce python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n shadowcoerce pip install "impacket==0.12.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/shadowcoerce/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> SETH "
/opt/miniconda3/bin/conda create -y --name seth python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n seth pip install hexdump >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/seth/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PetitPotam "
/opt/miniconda3/bin/conda create -y --name petitpotam python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n petitpotam pip install "impacket==0.12.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/petitpotam/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PetitPotam (bis) "
/opt/miniconda3/bin/conda create -y --name petitpotam2 python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n petitpotam2 pip install "impacket==0.12.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/petitpotam2/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> DFScoerce "
/opt/miniconda3/bin/conda create -y --name dfscoerce python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n dfscoerce pip install "impacket==0.12.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/dfscoerce/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Krbrelayx "
/opt/miniconda3/bin/conda create -y --name krbrelayx python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n krbrelayx pip install "impacket==0.12.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/krbrelayx/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> TargetedKerberoast "
/opt/miniconda3/bin/conda create -y --name targetedKerberoast python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n targetedKerberoast pip install "impacket==0.12.0" >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n targetedKerberoast pip install rich >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n targetedKerberoast pip install pycryptodome >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/targetedKerberoast/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Wfuzz "
/opt/miniconda3/bin/conda create -y --name wfuzz python=3.10 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n wfuzz pip install "pip<24.1" >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n wfuzz pip install "wfuzz==3.1.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/wfuzz/bin/wfuzz" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> SQLmap "
/opt/miniconda3/bin/conda create -y --name sqlmap python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n sqlmap pip install "sqlmap==1.9.6" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/sqlmap/bin/sqlmap" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> LFImap "
/opt/miniconda3/bin/conda create -y --name lfimap python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n lfimap pip install "lfimap==0.1.4" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/lfimap/bin/lfimap" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Arjun "
/opt/miniconda3/bin/conda create -y --name arjun python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n arjun pip install "arjun==2.2.7" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/arjun/bin/arjun" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Sublist3r "
/opt/miniconda3/bin/conda create -y --name sublist3r python=3.10 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n sublist3r pip install dnspython >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n sublist3r pip install requests >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/sublist3r/sublist3r.py" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> SMBMap "
/opt/miniconda3/bin/conda create -y --name smbmap python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n smbmap pip install "smbmap==1.10.7" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/smbmap/bin/smbmap" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Wapiti "
/opt/miniconda3/bin/conda create -y --name wapiti python=3.13 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n wapiti pip install "wapiti3==3.2.4" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/wapiti/bin/wapiti" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Parsero "
/opt/miniconda3/bin/conda create -y --name parsero python=3.9 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n parsero pip install "parsero==0.81" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/parsero/bin/parsero" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Wafw00f "
/opt/miniconda3/bin/conda create -y --name wafw00f python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n wafw00f pip install "wafw00f==2.3.1" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/wafw00f/bin/wafw00f" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> HashID "
/opt/miniconda3/bin/conda create -y --name hashid python=3.9 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n hashid pip install "hashid==3.1.4" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/hashid/bin/hashid" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Coercer "
/opt/miniconda3/bin/conda create -y --name coercer python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n coercer pip install "coercer==2.4.3" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/coercer/bin/coercer" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> PRET "
/opt/miniconda3/bin/conda create -y --name PRET python=3.11 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n PRET pip install pysnmp >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n PRET pip install colorama >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n PRET pip install requests >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/PRET/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Dnschef "
/opt/miniconda3/bin/conda create -y --name dnschef python=3.11 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n dnschef pip install "dnschef-ng==0.7.2" >> $LOGFILE 2>&1
if [[ -e "opt/miniconda3/envs/dnschef/bin/dnschef" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Mitm6 "
/opt/miniconda3/bin/conda create -y --name mitm6 python=3.11 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n mitm6 pip install "mitm6==0.3.0" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/mitm6/bin/mitm6" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> LSASSY "
/opt/miniconda3/bin/conda create -y --name lsassy python=3.11 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n lsassy pip install "lsassy==3.1.13" >> $LOGFILE 2>&1
if [[ -e " /opt/miniconda3/envs/lsassy/bin/lsassy" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Cupp "
/opt/miniconda3/bin/conda create -y --name cupp python=3.11 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n cupp pip install "cupp==1.3.3" >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/cupp/bin/cupp" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Crowbar "
/opt/miniconda3/bin/conda create -y --name crowbar python=3.10 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n crowbar pip install "paramiko==2.7.1" >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n crowbar pip install six >> $LOGFILE 2>&1
if [[ -e "/opt/pandora/github/crowbar/crowbar.py" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> theHarvester "
/opt/miniconda3/bin/conda create -y --name theHarvester python=3.12 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install netaddr >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install ujson >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install aiomultiprocess >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install aiohttp >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install certifi >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install PyYAML >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install censys >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install aiodns >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install bs4 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install python-dateutil >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install shodan >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install aiosqlite >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install playwright  >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n theHarvester pip install uvloop  >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/theHarvester/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi

echo -ne "$textColor--> Automate "
/opt/miniconda3/bin/conda create -y --name automate python=3.13 >> $LOGFILE 2>&1
/opt/miniconda3/bin/conda run -n automate pip install netaddr >> $LOGFILE 2>&1
if [[ -e "/opt/miniconda3/envs/automate/bin/python" ]]
then
        echo -e "$STATUS_OK"
else
        echo -e "$STATUS_KO"
fi



#
# END
#

echo -ne "$fgpurple2___________________________________________________________________________________________________________\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgcyan$fgpurple1                                  \033[5m S T A G E   2   C O M P L E T E D \033[25m                                      $reset\n"
echo -ne "$bgcyan                                                                                                           $reset\n"
echo -ne "$bgdark                                                                                                           $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | CONGRATULATIONS !                                                                                      $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| | The second stage of evolution process is complete.                                                     $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fgcyan| |                                                                                                        $reset\n"
echo -ne "$bgdark$fggray""___________________________________________________________________________________________________________$reset\n"
echo ""
echo -e "$minus CODE OVER - DONE"

exit
