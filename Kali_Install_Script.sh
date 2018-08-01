#!/bin/bash

#Note, this is a script that I started to build after repeatedly needing to roll out builds. 
#I thought about creating a custom Kali Distro, however with needing to install custom tools from github 
#I decided on a modifiable script instead. When I started to build the script, 
#I built upon the foundation that Matthew Clark May had used in a Repository he created, but no longer maintains. Credit where it's due.

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install git -y

echo "-------------------------------------------------------------------"
echo "----- Update, Upgrade, and Dist-Upgrade Complete, Next Phase ------"
echo "-------------------------------------------------------------------"

sudo apt-get install htop hexedit exiftool exif -y 

echo "-------------------------------------------------------------------"
echo "---------- Basic Tools Installed, Next Phase ------------"
echo "-------------------------------------------------------------------"

sudo service postgresql start
msfdb init

echo "-------------------------------------------------------------------"
echo "--------------- Metasploit configured, Next Phase -----------------"
echo "-------------------------------------------------------------------"

sudo mkdir /opt/Bruteforcing
cd /opt/Bruteforcing/
sudo git clone https://github.com/1N3/BruteX.git
cd BruteX/
sudo bash install.sh -y
cd ..

echo "-------------------------------------------------------------------"
echo "--------------- BruteX Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/x90skysn3k/brutespray.git
cd brutespray/
sudo pip install -r requirements.txt
cd ..

echo "-------------------------------------------------------------------"
echo "--------------- Brutespray Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/ztgrace/changeme.git
cd changeme/
sudo apt-get install unixodc-dev -y
sudo pip install -r requirements.txt
cd ..
cd ..

echo "-------------------------------------------------------------------"
echo "--------------- Changeme Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/
cd setup/
sudo ./setup.sh -y
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- EyeWitness Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/danielmiessler/SecLists.git

echo "-------------------------------------------------------------------"
echo "--------------- SecLists Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo mkdir Recon
cd Recon
sudo git clone https://github.com/x1mdev/ReconPi.git
cd ReconPi/
sudo ./install.sh
cd ..

echo "-------------------------------------------------------------------"
echo "--------------- ReconPi Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/leebaird/discover.git
cd discover/
sudo ./update.sh
cd /opt/Recon/

echo "-------------------------------------------------------------------"
echo "--------------- Discover Installed, It installed Lots!! Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/1N3/Sn1per.git
cd Sn1per/
sudo ./install.sh
cd ..

echo "-------------------------------------------------------------------"
echo "--------------- Sn1per Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/jhaddix/domain.git

echo "-------------------------------------------------------------------"
echo "--------------- Domain Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/cakinney/domained.git
cd domained/
sudo python domained.py --install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Domained Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/elceef/dnstwist.git
cd dnstwist/
sudo apt-get install python-dnspython python-geoip python-whois python-requests python-ssdeep python-cffi -y
cd ..

echo "-------------------------------------------------------------------"
echo "--------------- DnsTwist Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/vulnersCom/nmap-vulners.git

echo "-------------------------------------------------------------------"
echo "--------------- nmap-vulners Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/si9int/cc.py.git

echo "-------------------------------------------------------------------"
echo "--------------- cc.py Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/abhaybhargav/bucketeer.git

echo "-------------------------------------------------------------------"
echo "--------------- Bucketeer Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/DanMcInerney/icebreaker.git

echo "-------------------------------------------------------------------"
echo "--------------- All Tools Installed! Go Break Some Stuff! ----------------"
echo "-------------------------------------------------------------------"
